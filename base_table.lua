module(..., package.seeall)

function constructor(type, keys, defaults, meta)
   return function(args)
      local mandatory = {}

      if meta then
	 setmetatable(args, { __index = meta})
      end

      for _,k in ipairs(keys) do
	 if string.sub(k, -1) ~= "?" then
	    table.insert(mandatory, k)
	 end
      end
      table.has_keys(args, mandatory)

      for k,v in pairs(defaults) do
	 if not args[k] then
	    args[k] = v
	 end
      end

      args.type = type
      return args
   end
end