dofile("dumper.lua")
dofile("table.lua")
require("cache")
require("path")
require("colors")
require("base_table") -- TODO rename: base_table
require("dialog")

function love.load()
   love.graphics.setMode(512, 448)
   love.graphics.setBackgroundColor(colors.WHITE)
   love.graphics.setFont(cache.ttf("kharon", 8))

   dlg = dialog.new{x = 0,
		    y = 1,
		    width = 513,
		    height = 100,
		    text = "Welcome to a new age! This is the world of Fucanglong and you are about to start your journey... Get ready for the experience of a life time!"}

   print("dumping dlg:")
   dump(dlg)

end

function love.update()

end

function love.draw()
   dialog.draw(dlg)

--[[   love.graphics.setFont(cache.fon("PixelCarnageMonoCode", 12))
   love.graphics.setFont(love.graphics.newFont("res/font/PixelCarnageMonoCode.fon", 10))
   love.graphics.print("hello world! lorem ipsum and all, test hi.", 20, 40)

--   love.graphics.setFont(cache.fon("PixelCarnageMonoCodeTall", 12))
   love.graphics.setFont(love.graphics.newFont("res/font/PixelCarnageMonoCodeTall.fon", 10))
   love.graphics.print("hello world! lorem ipsum and all, test hi.", 20, 60)
   ]]--
end
