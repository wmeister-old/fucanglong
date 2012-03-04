module(..., package.seeall)

function constructor(table_type, keys, defaults, meta, callback)
   return function(args)
      local mandatory = {}

      if not callback and type(meta) == "function" then
	 callback = meta
	 meta = nil
      end

      if meta then
	 setmetatable(args, { __index = meta})
      end

      for _,k in ipairs(keys) do
	 if string.sub(k, -1) ~= "?" then
	    table.insert(mandatory, k)
	 end
      end
      table.has_keys(args, mandatory)

      if defaults then
	 for k,v in pairs(defaults) do
	    if not args[k] then
	       args[k] = v
	    end
	 end
      end

      args.table_type = table_type

      if callback then
	 return callback(args)
      end
      return args
   end
end