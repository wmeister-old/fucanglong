module(..., package.seeall)

function resource(name)
   return "res/"..name
end

function png(name)
   return name..".png"
end

function texture(name)
   return resource(png("texture/"..name))
end
