module(..., package.seeall)

new = base_table.constructor("sprite", {"sheet", "cell_width", "cell_height", "cell", "x", "y", "vpadding?", "hpadding?"},
                                       { vpadding = 0, hpadding = 0}, function(self) 
   self.sheet = cache.spritesheet(self.sheet)
   return sprite.set_cell(self)
end)

function row(sprite, y)
   return (sprite.cell_height*(y-1)) + (sprite.vpadding*(y-1))
end

function column(sprite, x)
   return (sprite.cell_width*(x-1)) + (sprite.hpadding*(x-1))
end

function set_cell(sprite, x, y)
   if not x then
      x = sprite.cell[1]
      y = sprite.cell[2]
   end

   sprite.quad = love.graphics.newQuad(column(sprite, x), row(sprite, y), sprite.cell_width, sprite.cell_height, sprite.sheet:getWidth(), sprite.sheet:getHeight())
   return sprite
end

function draw(sprite)
   love.graphics.drawq(sprite.sheet, sprite.quad, sprite.x, sprite.y)
end