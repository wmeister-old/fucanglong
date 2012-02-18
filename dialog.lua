module(..., package.seeall)

-- TODO need border color
new = base_object.constructor("dialog", {"x", "y", "width", "height", "texture?", "border?", "bgcolor?", "color?", "text?", "visible?"},
                                        {bgcolor = "#000000", color = "#ffffff", visible = true})

function draw(dlg)
   if dlg.texture then
      if not cache.is_cached(dlg.texture) then
	 cache.cache_texture(dlg.texture)
      end
      -- TODO draw the texture
   else
      -- TODO draw a rectangle filled w/ bgcolor
   end
   -- TODO draw the border
end
