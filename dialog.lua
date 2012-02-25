module(..., package.seeall)

new = base_table.constructor("dialog", {"x", "y", "width", "height", "texture?", "bgcolor?", "color?", "text?", "visible?"},
                                       {bgcolor = colors.BLUE, color = colors.WHITE, visible = true})

function draw(dlg)
   -- TODO move these into rectangle.lua
   local function draw_solid_rectangle(color, x, y, width, height) -- TODO rename rectangle.draw_solid
      love.graphics.setColor(color)
      love.graphics.rectangle("line", x, y, width, height)
   end

   local function draw_filled_rectangle(color, x, y, width, height) -- TODO rename rectangle.draw_filled
      love.graphics.setColor(color)
      love.graphics.rectangle("fill", x, y, width, height)
   end

   if dlg.texture then
      if not cache.is_cached(dlg.texture) then
	 cache.cache_texture(dlg.texture)
      end
      -- TODO draw the texture
   else
      draw_filled_rectangle(dlg.bgcolor, dlg.x+4, dlg.y+4, dlg.width-8, dlg.height-8)
   end
   -- draw the border
   draw_solid_rectangle(colors.BLACK, dlg.x, dlg.y, dlg.width, dlg.height)
   draw_solid_rectangle(colors.DARK_GREY, dlg.x+1, dlg.y+1, dlg.width-2, dlg.height-2)
   draw_solid_rectangle(colors.LIGHT_GREY, dlg.x+2, dlg.y+2, dlg.width-4, dlg.height-4)
   draw_solid_rectangle(colors.BLACK, dlg.x+3, dlg.y+3, dlg.width-6, dlg.height-6)

   -- draw the text
   local padding = 6

   love.graphics.setColor(dlg.color)
   scissor.set(dlg.x, dlg.y, dlg.width-padding, dlg.height-padding)
   love.graphics.printf(dlg.text, dlg.x+padding, dlg.y+padding, dlg.width-padding)
   scissor.reset()
end
