module(...., package.seeall)

local _cache = {}

function is_cached(key)
   if _cache[key] then
      return true
   else
      return false
   end
end

function cache(key, value)
   if value then
      _cache[key] = value
   end
   return _cache[key]
end

function cache_image(name)
   local key = Path.resource(name)

   if is_cached(key) then
      return cache(key)
   else
      return cache(key, love.graphics.newImage(key))
   end
end

function cache_png(name)
   return cache_image(name..".png")
end

function cache_texture(name)
   return cache_png("texture/"..name)
end
