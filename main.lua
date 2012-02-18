dofile("table.lua")
dofile("dumper.lua")
require("base_object")
require("dialog")

local dlg = dialog.new{x = 0,
		       y = 1,
		       width = 500,
		       height = 100}

print(dump(dlg))