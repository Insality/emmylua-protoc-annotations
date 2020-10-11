local protoc = require("protoc")
local annotations = require("annotations")


local function is_dir(path)
	local f = io.open(path, "r")
	local _, _, code = f:read(1)
	f:close()
	return code == 21
end


local function main()

	for i = 1, #arg do
		local path = arg[i]
		if is_dir(path) then
			protoc:addpath(path)
		else
			protoc:parsefile(path)
		end
	end

	print(annotations.generate(protoc.loaded))
end

main()
