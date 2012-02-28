function table.has_keys(t, keys)
   for _,k in ipairs(keys) do
      assert(t[k], "missing key '"..k.."'")
   end
   return t
end

function table.merge(t1, t2)
   for k,v in pairs(t2) do
      t1[k] = v
   end
   return t1
end