module(..., package.seeall)

function resource(name)
   return "res/"..name
end

local function _font(ext)
   return function(name)
      return resource("font/"..name.."."..ext)
   end
end

font = { ttf = _font("ttf"),
	 fon = _font("fon")}

function png(name)
   return name..".png"
end

function texture(name)
   return resource(png("texture/"..name))
end
