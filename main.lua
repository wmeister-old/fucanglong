dofile("dumper.lua")
dofile("table.lua")
require("path")
require("colors")
require("base_object")
require("dialog")


function love.load()
   love.graphics.setMode(512, 448)
   love.graphics.setBackgroundColor(colors.WHITE)

   dlg = dialog.new{x = 0,
		    y = 1,
		    width = 500,
		    height = 100}

   print("dumping dlg:")
   dump(dlg)
end

function love.update()

end

function love.draw()
   dialog.draw(dlg)
end
