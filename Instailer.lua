local file = io.open("/autorun.lua", "w")
file:write("dofile(\"/test.lua\")")
file:close()