module(..., package.seeall)

function reset()
   love.graphics.setScissor(0, 0, love.graphics.getWidth(), love.graphics.getHeight())
end

function set(x, y, w, h)
   love.graphics.setScissor(x, y, w, h)
end

function get()
   return love.graphics.getScissor()
end
