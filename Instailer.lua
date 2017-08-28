local fs = require("filesystem")
local component = require("component")
local computer = require("computer")
local unicode = require("unicode")
local shell = require("shell")
local serialization = require("serialization")
local gpu = component.gpu
local screen = component.screen

local function wget(url, path)
	fs.makeDirectory(fs.path(path))
	shell.execute("wget " ..url .. " " .. path .. " -fq")
end

print("123")

--local file = io.open("/autorun.lua", "w")
--file:write("dofile(\"/OS.lua\")")
--file:close()