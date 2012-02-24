module(..., package.seeall) -- TODO is this a module a good idea?
local _cache = {}

local function is_cached(key)
   if _cache[key] then
      return true
   else
      return false
   end
end

local function cache(key, value)
   if value then
      _cache[key] = value
   end
   return _cache[key]
end

local function cache_(fn)
   return function(key)
      if is_cached(key) then
	 return cache(key)
      else
	 return cache(key, fn(key))
      end
   end
end

png = cache_(function(name)
   return love.graphics.newImage(path.png(name))
end)

texture = cache_(function(name)
   return love.graphics.newImage((path.texture(name))
end)
