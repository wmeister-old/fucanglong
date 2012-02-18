function table.has_keys(t, keys)
   for _,k in ipairs(keys) do
      assert(t[k], "missing key '"..k.."'")
   end
   return t
end
