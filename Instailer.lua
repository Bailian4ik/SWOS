local file = io.open("/autorun.lua", "w")
file:write("dofile(\"/OS.lua\")")
file:close()