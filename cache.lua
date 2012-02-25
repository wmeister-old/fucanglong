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

function png(name)
   name = path.png(name)

   if is_cached(name) then
      return cache(name)
   end
   return cache(name, love.graphics.newImage(name))
end

function texture(name)
   name = path.texture(name)

   if is_cached(name) then
      return cache(name)
   end
   return cache(name, love.graphics.newImage(name))
end

function fon(name, size)
   name = path.font.fon(name)

   if is_cached(name) then
      return cache(name)
   end
   return cache(name, love.graphics.newFont(name, size))
end

function ttf(name, size)
   name = path.font.ttf(name)

   if is_cached(name) then
      return cache(name)
   end
   return cache(name, love.graphics.newFont(name, size))
end
