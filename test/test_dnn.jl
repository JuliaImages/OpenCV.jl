using Downloads

function IOU(boxA, boxB)
    xA = max(boxA[1], boxB[1])
    yA = max(boxA[2], boxB[2])
    xB = min(boxA[3], boxB[3])
    yB = min(boxA[4], boxB[4])
    interArea = max(0, xB - xA + 1) * max(0, yB - yA + 1)
    boxAArea = (boxA[3] - boxA[1] + 1) * (boxA[4] - boxA[2] + 1)
    boxBArea = (boxB[3] - boxB[1] + 1) * (boxB[4] - boxB[2] + 1)
    iou = interArea / float(boxAArea + boxBArea - interArea)
    return iou
end

const cv = OpenCV

# Download `url` into `dir`, returning the local path, or `nothing` when offline.
function try_download(url, dir)
    path = joinpath(dir, basename(url))
    try
        Downloads.download(url, path)
        return path
    catch err
        @warn "Download failed; skipping the test that needs it" url exception = err
        return nothing
    end
end

const dnn_tmp = mktempdir()

@testset "dnn" begin
    @testset "FaceDetectorYN (YuNet ONNX)" begin
        # OpenCV 5 dropped the TensorFlow/Caffe/Darknet importers; YuNet is ONNX.
        model = try_download("https://github.com/opencv/opencv_zoo/raw/main/models/face_detection_yunet/face_detection_yunet_2023mar.onnx", dnn_tmp)
        if model === nothing
            @test_skip false
        else
            img = OpenCV.imread(joinpath(test_dir, "cascadeandhog", "images", "mona-lisa.png"))
            W, H = size(img, 2), size(img, 3)
            fd = cv.FaceDetectorYN_create(model, "", cv.Size{Int32}(W, H))
            nfaces, faces = cv.detect(fd, img)
            # `faces` is N rows × 15 cols of Float32: x, y, w, h, 5 landmarks, score.
            @test size(faces, 2) == 15
            @test size(faces, 3) >= 1
            x, y, w, h = faces[1, 1:4, 1]
            @test faces[1, 15, 1] > 0.9
            box = (x, y, x + w, y + h)
            expected_rect = (185, 101, 129 + 185, 169 + 101)
            @test IOU(box, expected_rect) > 0.6
        end
    end

    @testset "Tokenizer (GPT-2 BPE)" begin
        # Stock Hugging Face config.json + tokenizer.json (~1.4 MB) in one directory.
        tokdir = mkpath(joinpath(dnn_tmp, "gpt2"))
        base = "https://huggingface.co/openai-community/gpt2/resolve/main/"
        files = [try_download(base * f, tokdir) for f in ("config.json", "tokenizer.json")]
        if any(isnothing, files)
            @test_skip false
        else
            tok = cv.dnn.Tokenizer_load(joinpath(tokdir, "config.json"))
            ids = cv.dnn.encode(tok, "hello world")
            @test ids == Int32[31373, 995]
            @test cv.dnn.decode(tok, ids) == "hello world"
            # load() also accepts the model directory.
            @test cv.dnn.encode(cv.dnn.Tokenizer_load(tokdir), "hello world") == ids
        end
    end

    @testset "Net KV-cache API" begin
        # Exercising the cache needs an exported decoder-only LLM (hundreds of MB),
        # so only check that the 5.1 methods are wrapped.
        for f in (cv.dnn.enableKVCache, cv.dnn.disableKVCache,
                  cv.dnn.resetKVCache, cv.dnn.reserveKVCache)
            @test !isempty(methods(f))
        end
        @test_skip false   # KV-cache inference with a real model
    end

    @testset "learned features (XFeat/DISK/ALIKED/LightGlue)" begin
        # These load ONNX models of several MB each; only check they are wrapped.
        for f in (cv.XFeat_create, cv.DISK_create, cv.ALIKED_create, cv.LightGlueMatcher_create)
            @test !isempty(methods(f))
        end
        @test_skip false   # detect/match with downloaded models
    end
end
