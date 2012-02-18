module(..., package.seeall)

function constructor(type, keys, defaults)
   return function (args)
             local mandatory = {}

             for _,k in ipairs(keys) do
		if string.sub(k, -1) == "?" then
		   args[string.sub(k, 1, -2)] = args[k]
		   args[k] = nil
		else
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