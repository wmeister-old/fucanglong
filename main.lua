dofile("dumper.lua")
dofile("table.lua")
require("cache")
require("path")
require("colors")
require("base_object") -- TODO rename: base_table
require("dialog")
dofile("globals.lua")

function love.load()
   love.graphics.setMode(512, 448)
   love.graphics.setBackgroundColor(colors.WHITE)

   dlg = dialog.new{x = 0,
		    y = 1,
		    width = 513,
		    height = 100}

   print("dumping dlg:")
   dump(dlg)
end

function love.update()

end

function love.draw()
   dialog.draw(dlg)
end
