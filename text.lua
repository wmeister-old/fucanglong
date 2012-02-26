module(..., package.seeall)

function lines_to_height(x)
   return x*love.graphics.getFont():getHeight()
end