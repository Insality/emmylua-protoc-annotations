local protoc = require("protoc")
local annotations = require("annotations")


local function main()
    protoc:addpath("./proto")
    protoc:parsefile("eva.proto")

    print(annotations.generate(protoc.loaded))
end


main()
