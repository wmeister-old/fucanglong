for _,name in ipairs({"dumper", "table"}) do
   dofile(name..".lua")
end
for _,mod in ipairs({"cache", "path", "scissor", "colors", "text", "base_table", "entity", "character", "pc", "dialog"}) do
   require(mod)
end

function love.load()
   love.graphics.setMode(512, 448)
   love.graphics.setBackgroundColor(colors.WHITE)
   love.graphics.setFont(cache.ttf("kharon", 8))

   dlg = dialog.new{x = 0,
		    y = 1,
		    width = love.graphics.getWidth(),
		    height = dialog.lines_to_height(3),
		    text = "Welcome to a new age! This is the world of Fucanglong and you are about to starz your journey... Get ready for the experience of a life time! Welcome to a new age! This is the world of Fucanglong and you are about to start your journey... Get ready for the experience of a life time! Welcome to a new age! This is the world of Fucanglong and you are about to start your journey... Get ready for the experience of a life time! abcd END."}

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
