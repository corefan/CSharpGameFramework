--remove comments for debug with ZeroBrane
--require "luadebug";

local rawrequire = require;
require = function(file)  
  return package.loaded[file] or rawrequire(file);
end;

function __basic_type_func(v)
	return v;
end;

CS = CS or {};
CS.System = CS.System or {};
CS.System.Boolean = CS.System.Boolean or __basic_type_func;
CS.System.SByte = CS.System.SByte or __basic_type_func;
CS.System.Byte = CS.System.Byte or __basic_type_func;
CS.System.Char = CS.System.Char or __basic_type_func;
CS.System.Int16 = CS.System.Int16 or __basic_type_func;
CS.System.Int32 = CS.System.Int32 or __basic_type_func;
CS.System.Int64 = CS.System.Int64 or __basic_type_func;
CS.System.UInt16 = CS.System.UInt16 or __basic_type_func;
CS.System.UInt32 = CS.System.UInt32 or __basic_type_func;
CS.System.UInt64 = CS.System.UInt64 or __basic_type_func;
CS.System.Single = CS.System.Single or __basic_type_func;
CS.System.Double = CS.System.Double or __basic_type_func;
CS.System.String = CS.System.String or __basic_type_func;
CS.System.Collections = CS.System.Collections or {};
CS.System.Collections.Generic = CS.System.Collections.Generic or {};
CS.System.Collections.Generic.List_T = {__cs2lua_defined = true, __class_name = "CS.System.Collections.Generic.List_T", __exist = function(k) return false; end};
CS.System.Collections.Generic.Queue_T = {__cs2lua_defined = true, __class_name = "CS.System.Collections.Generic.Queue_T", __exist = function(k) return false; end};
CS.System.Collections.Generic.Stack_T = {__cs2lua_defined = true, __class_name = "CS.System.Collections.Generic.Stack_T", __exist = function(k) return false; end};
CS.System.Collections.Generic.Dictionary_TKey_TValue = {__cs2lua_defined = true, __class_name = "CS.System.Collections.Generic.Dictionary_TKey_TValue", __exist = function(k) return false; end};
CS.System.Collections.Generic.HashSet_T = {__cs2lua_defined = true, __class_name = "CS.System.Collections.Generic.HashSet_T", __exist = function(k) return false; end};
CS.System.Array = CS.System.Array or {};

CS.System.Collections.Generic.MyDictionary_TKey_TValue = CS.System.Collections.Generic.Dictionary_TKey_TValue;

__cs2lua_out = (Slua and Slua.out) or {};
__cs2lua_nil_field_value = {};

__cs2lua_special_integer_operators = { "/", "%", "+", "-", "*", "<<", ">>", "&", "|", "^", "~" };
__cs2lua_div = 0;
__cs2lua_mod = 1;
__cs2lua_add = 2;
__cs2lua_sub = 3;
__cs2lua_mul = 4;
__cs2lua_lshift = 5;
__cs2lua_rshift = 6;
__cs2lua_bitand = 7;
__cs2lua_bitor = 8;
__cs2lua_bitxor = 9;
__cs2lua_bitnot = 10;

function lshift(v,n)
  if bit then
    return bit.lshift(v,n);
  else
    for i=1,n do
        v=v*2;
    end;
    return v;
  end;
end;

function rshift(v,n)
  if bit then
    return bit.rshift(v,n);
  else
    for i=1,n do
        v=v/2;
    end;
    return v;
  end;
end;

function condexp(cv, tfIsConst, tf, ffIsConst, ff)
    if cv then
      if tfIsConst then
        return tf;
      else
        return tf();
      end;
    else
      if ffIsConst then
        return ff;
      else
        return ff();
      end;
    end;
end;

function condaccess(v, func)
	return v and func();
end;

function nullcoalescing(v, isConst, func)
  if v then
    return v;
	else
    if isConst then
	    return func;
	  else
	    return func();
	  end;	  
	end;
end;

function bitnot(v)
  if bit then
    return bit.bnot(v);
  else
	  return 0;
	end;
end;

function bitand(v1,v2)
  if bit then
    return bit.band(v1,v2);
  else
	  return 0;
	end;
end;

function bitor(v1,v2)
  if bit then
    return bit.bor(v1,v2);
  else
	  return 0;
  end;
end;

function bitxor(v1,v2)
  if bit then
    return bit.bxor(v1,v2);
  else
	  return 0;
	end;
end;

function typecast(obj, t, isEnum)
	if t == CS.System.String then
		return tostring(obj);
	elseif t == CS.System.Single or t ==	CS.System.Double then
	  return tonumber(obj);
	elseif t == CS.System.Int64 or t == CS.System.UInt64 then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  return v;
	elseif t == CS.System.Int32 or t == CS.System.UInt32 then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  if v > 0 then
	    v = v % 0x100000000;
	  elseif v < 0 then
	    v = -((-v) % 0x100000000);
	  end;
	  return v;
	elseif t == CS.System.Int16 or t == CS.System.UInt16 or t == CS.System.Char then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  if v > 0 then
	    v = v % 0x10000;
	  elseif v < 0 then
	    v = -((-v) % 0x10000);
	  end;
	  return v;
	elseif t == CS.System.SByte or t == CS.System.Byte then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  if v > 0 then
	    v = v % 0x100;
	  elseif v < 0 then
	    v = -((-v) % 0x100);
	  end;
	  return v;
	elseif t == CS.System.Boolean then
		return obj;
	elseif isEnum then
	  return obj;
	elseif typeis(obj, t, isEnum) then
		return obj;
	else
  	return obj;
 	end;
end;

function typeas(obj, t, isEnum)
	if t == CS.System.String then
		return tostring(obj);
	elseif t == CS.System.Single or t ==	CS.System.Double then
	  return tonumber(obj);
	elseif t == CS.System.Int64 then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  return v;
	elseif t == CS.System.Int32 then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  return v % 0x100000000;
	elseif t == CS.System.Int16 or t == CS.System.Char then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  return v % 0x10000;
	elseif t == CS.System.SByte or t == CS.System.Byte then
	  local v = tonumber(obj);
	  v = math.floor(v);
	  return v % 0x100;
	elseif t == CS.System.Boolean then
		return obj;
	elseif isEnum then
	  return obj;
	elseif typeis(obj, t, isEnum) then
		return obj;
	else
		return nil;
 	end;
end;

function typeis(obj, t, isEnum)
  local meta = getmetatable(obj);
  local meta2 = getmetatable(t);
  local tn1 = nil;
  local tn2 = nil;
  if meta then
  	tn1 = rawget(meta, "__fullname");
  end;
  if meta2 then
  	tn2 = rawget(meta2, "__fullname");
  end;
  if meta then
    if type(obj)=="userdata" then
      if tn1 and tn1==tn2 then
      	return true;
      end;
      --check slua parent metatable chain
      local parent = rawget(meta, "__parent");
      while parent ~= nil do
      	tn1 = rawget(parent, "__fullname");
      	if tn1 and tn1==tn2 then
      		return true;
      	end;
      	parent = rawget(parent, "__parent");
      end;
    else
  	  if rawget(meta, "__class") == t then
  		  return true;
  	  end;
      local intfs = rawget(meta, "__interfaces");
      if intfs then
        for i,v in ipairs(intfs) do
          if v == tn2 then
            return true;
          end;
        end;
      end;
  	  --check cs2lua base class chain
  	  local baseClass = rawget(meta, "__base_class");
  	  local lastCheckedClass = meta;
  	  while baseClass ~= nil do  	  
    		if baseClass == t then
    			return true;
    		end;
    		intfs = rawget(meta, "__interfaces");
        if intfs then
          for i,v in ipairs(intfs) do
            if v == tn2 then
              return true;
            end;
          end;
        end;
    		if rawget(baseClass, "__cs2lua_defined") then
    			baseClass = rawget(baseClass, "__base_class");
    		else
    			lastCheckedClass = baseClass;
    			break;
    		end;
    	end;
    	--try slua base class and parent metatable chain 
    	if not rawget(lastCheckedClass, "__cs2lua_defined") then
    		local meta3 = getmetatable(lastCheckedClass);
    		if meta3 then
		      parent = rawget(meta3, "__parent");
		      while parent ~= nil do
		      	tn1 = rawget(parent, "__fullname");
		      	if tn1 and tn1 == tn2 then
		      		return true;
		      	end;
		      	parent = rawget(parent, "__parent");
		      end;
	      end;
    	end;
    end;
  end;
  return false;
end;

function __do_eq(v1,v2)
	return v1==v2;
end;

function isequal(v1,v2)
	local succ, res = pcall(__do_eq,v1,v2);
	if succ then
		return res;
	else
		return rawequal(v1,v2);
	end;
end;

function __get_last_name(ns)  
  local rns = string.reverse(ns);
  local ix = string.find(rns, ".", 1, true);
  if ix~=nil then
    return string.sub(ns, 1-ix);
  else
    return ns;
  end;
end;

function __wrap_if_string(val)
  if type(val)=="string" then
    return CS.System.String(val);
  else
    return val;
  end;
end;

function __unwrap_if_string(val)
  local meta = getmetatable(val);
  if type(val)=="userdata" and rawget(meta, "__typename")=="String" then
    return tostring(val);
  else
    return val;
  end;
end;

function __calc_table_count(tb)
  local count = 0;
  for k,v in pairs(tb) do
    count = count+1;
  end;
  return count;
end;

function __get_table_count(tb)
  local count = 0;
  local meta = getmetatable(tb);
  if meta then
    if meta.__count then
      count = meta.__count;
    else
      count = __calc_table_count(tb);
      meta.__count = count;
    end;
  end;
  return count;
end;

function __inc_table_count(tb)
  local meta = getmetatable(tb);
  if meta then
  	if nil ~= meta.__count then
	    meta.__count = meta.__count + 1;
	  else
	  	meta.__count = __calc_table_count(tb);
	  end;
	end;
end;

function __dec_table_count(tb)
  local meta = getmetatable(tb);
  if meta then
  	if meta.__count and meta.__count > 0 then
    	meta.__count = meta.__count - 1;    
    else
    	meta.__count = __calc_table_count(tb);
    end;
  end;
end;

function __clear_table(tb)
  local keys={};
  for k,v in pairs(tb) do
    table.insert(keys,k);
  end;
  for i,v in ipairs(keys) do
    tb[v]=nil;
  end;
  local meta = getmetatable(tb);
  if meta then
    meta.__count = 0;
  end;
end;

function __wrap_table_field(v)
	if nil==v then
		return __cs2lua_nil_field_value;
	else
		return v;
	end;
end;

function __unwrap_table_field(v)
	if __cs2lua_nil_field_value==v then
		return nil;
	else
		return v;
	end;
end;

__mt_index_of_array = function(t, k)
  if k=="__exist" then --禁用继承
    return function(tb,fk) return false; end;
	elseif k=="Length" or k=="Count" then
		return #t;
	elseif k=="GetLength" then
		return function(obj, ix)
      local ret = 0;
      local tb = obj;
      for i=0,ix do			       
        ret = #tb;
        tb = tb[0];
      end;
      return ret;
    end;
  elseif k=="Add" then
    return function(obj, v) table.insert(obj, v); end;
  elseif k=="Remove" then
    return function(obj, p)
      local pos = 1;
      local ret = nil;
      for k,v in pairs(obj) do		        
        if isequal(v,p) then
          ret=v;
          break;
        end;
        pos=pos+1;		        
      end;
      if ret then
        table.remove(obj,pos);
      end;
      return ret;
    end;
  elseif k=="RemoveAt" then
    return function(obj, ix)
      table.remove(obj,ix+1);
    end;
  elseif k=="AddRange" then
    return function(obj, coll)
      local enumer = coll:GetEnumerator();
      while enumer:MoveNext() do
        table.insert(obj, enumer.Current);
      end;
    end;
  elseif k=="Insert" then
    return function(obj, ix, p)
      table.insert(obj,ix+1,p);
    end;
  elseif k=="IndexOf" then
	  return function(obj, p)
	    local ix = 0;
      for k,v in pairs(obj) do
        if v==p then	          
          return ix;
        end;
        ix = ix + 1;
      end;
      return -1;
    end;
  elseif k=="LastIndexOf" then
	  return function(obj, p)
	    local num = #obj;
      for k=num,1 do
        local v = obj[k];
        if v==p then	          
          return k-1;
        end;
      end;
      return -1;
    end;
  elseif k=="FindIndex" then
  	return function(obj, predicate)
  		local ix = 0;
  		for k,v in pairs(obj) do
  			if predicate(v) then
  				return k - 1;
  			end
  		end
  		return -1;
  	end;
  elseif k=="Contains" then
	  return function(obj, p)
      local ret = false;
      for k,v in pairs(obj) do		        
        if v==p then
          ret=true;
          break;
        end;
      end;
      return ret;
    end;
  elseif k=="Peek" then    
    return function(obj)
      local num = #obj;
      local v = obj[num];
      return v;
    end;
  elseif k=="Enqueue" then
    return function(obj,v)
      table.insert(obj,1,v);
    end;
  elseif k=="Dequeue" then
    return function(obj)
      local num = #obj;
      local v = obj[num];
      table.remove(obj,num);
      return v;
    end;
  elseif k=="Push" then
    return function(obj,v)
      table.insert(obj,v);
    end;
  elseif k=="Pop" then
    return function(obj)
      local num = #obj;
      local v = obj[num];
      table.remove(obj,num);
      return v;
    end;
  elseif k=="CopyTo" then
    return function(obj, arr)
      for k,v in pairs(obj) do
        arr[k]=v;
      end;
    end;
  elseif k=="ToArray" then
    return function(obj)
      local ret = wraparray{};
      for k,v in pairs(obj) do
        ret[k]=v;
      end;
      return ret;
    end;
  elseif k=="Clear" then
    return function(obj)
    	while #obj>0 do
    		table.remove(obj);
    	end;
    end;
  elseif k=="GetEnumerator" then
    return function(obj)
      return GetArrayEnumerator(obj);
    end
  elseif k=="Sort" then
		return function(obj, predicate)
		  table.sort(obj, function(a, b) return predicate(a, b) < 0 end);
		end
  elseif k=="GetType" then
   	return function(obj)
   		local meta = getmetatable(obj);   		
   		return meta.__class;
   	end;
  end
end;

__mt_index_of_dictionary = function(t, k)
	if k=="__exist" then --禁用继承
    return function(tb,fk) return false; end;
	elseif k=="Count" then
		return __get_table_count(t);
	elseif k=="Add" then
	  return function(obj, p1, p2)
	    p1 = __unwrap_if_string(p1);		    
	    obj[p1] = { value=p2 };
	    __inc_table_count(obj);
	    return p2;
	  end;
	elseif k=="Remove" then
	  return function(obj, p)
	    p = __unwrap_if_string(p);
	    local v = obj[p];
	    local ret = nil;
	    if v then
	      ret = v.value;
        obj[p]=nil;
      end;
      __dec_table_count(obj);
      return ret;
    end;
	elseif k=="ContainsKey" then
	  return function(obj, p)
	    p = __unwrap_if_string(p);
      if obj[p] then
        return true;
      end;
      return false;
    end;
	elseif k=="ContainsValue" then
	  return function(obj, p)
      local ret = false;
      for k,v in pairs(obj) do		        
        if v.value==p then
          ret=true;
          break;
        end;
      end;
      return ret;
    end;		    
  elseif k=="TryGetValue" then
    return function(obj, p)
	    p = __unwrap_if_string(p);
      local v = obj[p];
      if v then
        return true, v.value;
      end;
      return false, nil;
    end;
  elseif k=="Keys" then
    local ret = wraparray{};
    for k,v in pairs(t) do
      k = __wrap_if_string(k);
      table.insert(ret, k);
    end;
    return ret;
  elseif k=="Values" then
    local ret = wraparray{};
    for k,v in pairs(t) do
      table.insert(ret, v.value);
    end;
    return ret;
  elseif k=="Clear" then
  	return function(obj)
  	  __clear_table(obj);
  	end;
  elseif k=="GetEnumerator" then
    return function(obj)
      return GetDictEnumerator(obj);
    end;
  elseif k=="GetType" then
   	return function(obj)
   		local meta = getmetatable(obj);   		
   		return meta.__class;
   	end;
	end;
end;

__mt_index_of_hashset = function(t, k)
	if k=="__exist" then --禁用继承
    return function(tb,fk) return false; end;
	elseif k=="Count" then
		return __get_table_count(t);
	elseif k=="Add" then
	  return function(obj, p)
	    p = __unwrap_if_string(p);
	    obj[p]=true;
	    __inc_table_count(obj);
	    return true;
	  end;
	elseif k=="Remove" then
	  return function(obj, p)
	    p = __unwrap_if_string(p);
	    local ret = obj[p];
	    if ret then
        obj[p]=nil;
      end;
      __dec_table_count(obj);
      return ret;
    end;
	elseif k=="Contains" then
	  return function(obj, p)
	    p = __unwrap_if_string(p);
      if obj[p] then
        return true;
      end;
      return false;
    end;
  elseif k=="CopyTo" then
    return function(obj, arr)
      for k,v in pairs(obj) do
	      k = __wrap_if_string(l);
        table.insert(arr,k);
      end;
    end;
  elseif k=="Clear" then
  	return function(obj)
  	  __clear_table(obj);
  	end;
  elseif k=="GetEnumerator" then
    return function(obj)
      return GetHashsetEnumerator(obj);
    end;
  elseif k=="GetType" then
   	return function(obj)
   		local meta = getmetatable(obj);   		
   		return meta.__class;
   	end;
	end;
end;

__mt_delegation = {
  __is_delegation = true,
  __call = function(t, ...)
    local ret = nil;
    for k,v in pairs(t) do
      if v then
        ret = v(...);
      end;
    end;
    return ret;
  end,
};

function GetArrayEnumerator(tb)
  return setmetatable({
    MoveNext = function(this)
      local tb = this.object;
      local num = #tb;
      if this.index < num then
        this.index = this.index + 1;
        this.current = tb[this.index];
        return true;
      else
        return false;
      end;
    end,
    object = tb,
    index = 0,
    current = nil,
  },{
    __index = function(t, k)
      if k=="Current" then
        return t.current;
      end;
      return nil;
    end,
  });
end;

function GetDictEnumerator(tb)
  return setmetatable({
    MoveNext = function(this)
      local tb = this.object;
      local v = nil;
      this.key, v = next(tb, this.key);
      this.current = {
        Key = __wrap_if_string(this.key),
        Value = v and v.value,
      };
      if this.key then
        return true;
      else
        return false;
      end;
    end,
    object = tb,
    key = nil,
    current = nil,
  },{
    __index = function(t, k)
      if k=="Current" then
        return t.current;
      end;
      return nil;
    end,
  });
end;

function GetHashsetEnumerator(tb)
  return setmetatable({
    MoveNext = function(this)
      local tb = this.object;
      local v = nil;
      this.key, v = next(tb, this.key);      
      if this.key then
        return true;
      else
        return false;
      end;
    end,
    object = tb,
    key = nil,
  },{
    __index = function(t, k)
      if k=="Current" then
        return __wrap_if_string(t.key);
      end;
      return nil;
    end,
  });
end;

function wrapconst(t, name)
  return t[name];
end;

function wrapchar(char, intVal)
  if intVal>0 then
    return intVal;
  else
    local str = tostring(char);
    local l = string.len(str);
    if l==1 then
      local first = string.byte(str,1,1);
      return first;
    elseif l==2 then
      local first = string.byte(str,1,1);
      local second = string.byte(str,2,2);
      return first+second*0x100;
    else
      return 0;
    end;
  end;
end;

function wraparray(arr)
	return setmetatable(arr, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = CS.System.Collections.Generic.List_T });
end;

function wrapdictionary(dict)
	return setmetatable(dict, { __index = __mt_index_of_dictionary, __cs2lua_defined = true, __class = CS.System.Collections.Generic.Dictionary_TKey_TValue });
end;

function wrapdelegation(handlers)
  return setmetatable(handlers, __mt_delegation);
end;

function wrapenumerable(func)
	return function(...)
		local args = {...};
		return UnityEngine.WrapEnumerator(coroutine.create(function()
			func(unpack(args));
		end));
	end;
end;

function wrapyield(yieldVal, isEnumerableOrEnumerator, isUnityYield)
	UnityEngine.Yield(yieldVal);
end;

LuaConsole = {
  Write = function(...)
    io.write(...);
  end,
  Print = function(...)
  	print(...);
  end,
};

function wrapvaluetype(v)
	return v;
end;

function wrapvaluetypearray(arr)
	for i,v in ipairs(arr) do
		arr[i]=wrapvaluetype(v);
	end;
	return setmetatable(arr, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = CS.System.Collections.Generic.List_T });
end;

function wrapexternvaluetype(v)
	return v;
end;

function wrapexternvaluetypearray(arr)
	for i,v in ipairs(arr) do
		arr[i]=wrapexternvaluetype(v);
	end;
	return setmetatable(arr, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = CS.System.Collections.Generic.List_T });
end;

function defineclass(base, className, static, static_methods, static_fields_build, static_props, static_events, instance_methods, instance_fields_build, instance_props, instance_events, interfaces, interface_map, is_value_type)
    local base_class = base;
    local mt = getmetatable(base_class);

    local class = static or {};
		for ck,cv in pairs(static_methods) do
			class[ck] = cv;
		end;
    local class_fields;
    if static_fields_build then
      class_fields = static_fields_build();
    else
      class_fields = {};
    end;
    local class_props = static_props or {};
    local class_events = static_events or {};
    class["__cs2lua_defined"] = true;
    class["__class_name"] = className;
    class["__is_value_type"] = is_value_type;
    class["__interfaces"] = interfaces;
    class["__interface_map"] = interface_map;
    class["__base_class"] = base_class;
        
    local function __find_base_class_key(k)
      if base_class then
      	if rawget(base_class, "__cs2lua_defined") then
      		local r,v = pcall(function() return base_class.__exist(k); end);
      		if r then
      		  return v;
      		end;
      	else
        	local r,ret = pcall(function() return base_class[k]; end);
        	if r then
        		return true;
        	end;
      	end;
      end;
      return false;
    end;        
    local function __find_class_key(k)
      local ret;
      ret = rawget(class, k);
      if nil~=ret then
        return true;
      end;
      ret = class_fields[k];
      if nil~=ret then
      	return true;
      end;
      ret = class_props[k];
      if nil~=ret then
        return true;
      end;
      ret = class_events[k];
      if nil~=ret then
        return true;
      end;
      return __find_base_class_key(k);
    end;
    
    setmetatable(class, {
        __call = function()
      			local baseObj = nil;
      			if base_class == CS.UnityEngine.MonoBehaviour then
      				baseObj = nil;
      			elseif mt then
      				baseObj = mt.__call();
      			end;
            local obj = {};
						for k,v in pairs(instance_methods) do
							obj[k] = v;
						end;
            local obj_fields;
            if instance_fields_build then
            	obj_fields = instance_fields_build();
            else
            	obj_fields = {};
            end;
            local obj_props = instance_props or {};
            local obj_events = instance_events or {};
            local obj_intf_map = interface_map or {};
            obj["base"] = baseObj;
            
            local function __find_base_obj_key(k)
              if baseObj then
              	local meta = getmetatable(baseObj);
              	if meta and rawget(meta, "__cs2lua_defined") then
              		local r,v = pcall(function() return baseObj:__exist(k); end);
              		if r then
              		  return v;
              		end;
              	else
                	local r, ret = pcall(function() return baseObj[k]; end);
                	if r then
                		return true;
                	end;
              	end;
              end;
              return false;
            end;
            local function __find_obj_key(k)
              local ret;
              ret = rawget(obj, k);
              if nil~=ret then
                return true;
              end;
	            ret = obj_fields[k];
	            if nil~=ret then
	            	return true;
	            end;
              ret = obj_props[k];
              if nil~=ret then
                return true;
              end;
              ret = obj_events[k];
              if nil~=ret then
                return true;
              end;
              local nk = obj_intf_map[k];
              if nil~=nk then
                ret = obj_fields[nk];
                if nil~=ret then
                  return true;
                end;
                ret = obj_props[nk];
                if nil~=ret then
                  return true;
                end;
                ret = obj_events[nk];
                if nil~=ret then
                  return true;
                end;
              end;
              return __find_base_obj_key(k);
            end;
            
            setmetatable(obj, {
            		__class = class,
            		__cs2lua_defined = true,
            		__class_name = className,
            		__is_value_type = is_value_type,
				    		__interfaces = interfaces,
				    		__interface_map = interface_map,
				    		__base_class = base_class,
                __index = function(t, k)
                    if k=="__exist" then
                      return function(tb, fk) return __find_obj_key(fk); end;
                    end;
                    local ret;
				            ret = obj_fields[k];
				            if nil~=ret then
				            	return __unwrap_table_field(ret);
				            end;
                    ret = obj_props[k];
                    if nil~=ret then
                      if ret.get then
                        ret = ret.get(t);
                      else
                        ret = nil;
                      end;
                      return ret;
                    end;
                    ret = obj_intf_map[k];
                    if nil~=ret then
                      ret = obj_fields[ret];
                      if nil~=ret then
                        return ret;
                      end;
                      ret = obj_props[ret];
                      if nil~=ret then
                        if ret.get then
                          ret = ret.get(t);
                        else
                          ret = nil;
                        end;
                        return ret;
                      end;
                    end;
                    if __find_base_obj_key(k) then
                      ret = baseObj[k];
                      return ret;
                    end;
				            --简单支持反射方法:GetType()
				            if k=="GetType" then
				             	return function(tb)	return class;	end;
				            end;
                    return ret;
                end,

                __newindex = function(t, k, v)
                    local ret;
				            ret = obj_fields[k];
				            if nil~=ret then
				            	obj_fields[k] = __wrap_table_field(v);
				            	return;
				            end;
                    ret = obj_props[k];
                    if nil~=ret then
                      if ret.set then
                        ret.set(t, v);
                      end;
                      return;
                    end;
                    ret = obj_intf_map[k];
                    if nil~=ret then
                      ret = obj_props[ret];
                      if nil~=ret then
                        if ret.set then
                          ret.set(t, v);
                        end;
                        return;
                      end;
                    end;
          					if __find_base_obj_key(k) then
          					  baseObj[k] = v;
          					  return;
          					end;
          					rawset(t, k, v);
                end,
				
        				__setbase = function(self, base)
        					baseObj = base;
        				end,              
            });

            return obj;
        end,
        
        __index = function(t, k)
            if k=="__exist" then
              return function(fk) return __find_class_key(fk); end;
            end;
            local ret;
            ret = class_fields[k];
            if nil~=ret then
            	return __unwrap_table_field(ret);
            end;
            ret = class_props[k];
            if nil~=ret then
              if ret.get then
                ret = ret.get(t);
              else
                ret = nil;
              end;
              return ret;
            end;
            if __find_base_class_key(k) then
          		ret = base_class[k];
          		return ret;
            end;
            --简单支持反射的属性:Type.Name与Type.FullName            
            if k=="Name" then
              ret = __get_last_name(className);
            elseif k=="FullName" then
              ret = className;
            end;
            return ret;
        end,

        __newindex = function(t, k, v)
            local ret;
            ret = class_fields[k];
            if nil~=ret then
            	class_fields[k] = __wrap_table_field(v);
            	return;
            end;
            ret = class_props[k];
            if nil~=ret then
              if ret.set then
                ret.set(t, v);
              end;
              return;
            end;
  					if __find_base_class_key(k) then
  					  base_class[k] = v;
  					  return;
  					end;
            rawset(t, k, v);
        end,
    });
    if class.cctor then
      class.cctor();
    end;
    return class;
end;

function newobject(class, ctor, initializer, ...)
  local obj = class();
  if ctor then
    obj[ctor](obj, ...);
  end;
  if obj and initializer then
  	initializer(obj);
  end;
  return obj;
end;

function newexternobject(class, className, ctor, initializer, ...)
  local obj = nil;
  if class ~= nil then
    obj = class(...);
  else
    obj = Slua.CreateClass(className, ...);
  end;
  if obj and initializer then
  	initializer(obj);
  end;
  return obj;
end;

function newtypeparamobject(t)
  if rawget(t, "__cs2lua_defined") then
    local obj = t();
    if obj.ctor then
      obj:ctor();
    end;
    return obj;
  else
    return t();
  end;
end;

function newdictionary(t, ctor, dict, ...)
  if dict then
	  return setmetatable(dict, { __index = __mt_index_of_dictionary, __cs2lua_defined = true, __class = t });
	end;
end;

function newlist(t, ctor, list, ...)
  if list then
    return setmetatable(list, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = t });
  end;
end;

function newcollection(t, ctor, coll, ...)
  if coll then
    return setmetatable(coll, { __index = __mt_index_of_hashset, __cs2lua_defined = true, __class = t });
  end;
end;

function newexterndictionary(t, className, ctor, dict, ...)
  if dict and t==CS.System.Collections.Generic.Dictionary_TKey_TValue then
	  return setmetatable(dict, { __index = __mt_index_of_dictionary, __cs2lua_defined = true, __class = t });
	else	  
	  local obj = nil;
	  if t ~= nil then
	    obj = t(...);
	  else
	    obj = Slua.CreateClass(className, ...);
	  end;
	  if obj then
			if dict ~= nil then
				for k,v in pairs(dict) do
				  obj:Add(k, v);
				end;
			end
	    return obj;
	  else
	    return nil;
	  end;
	end;
end;

function newexternlist(t, className, ctor, list, ...)
  if list and t==CS.System.Collections.Generic.List_T then    
	  return setmetatable(list, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = t });
	else 
	  local obj = nil;
	  if t ~= nil then
	    obj = t(...);
	  else
	    obj = Slua.CreateClass(className, ...);
	  end;
	  if obj then
			if list ~= nil then
				for i,v in ipairs(list) do
				  obj:Add(v);
				end;
			end
	    return obj;
	  else
	    return nil;
	  end;
  end;
end;

function newexterncollection(t, className, ctor, coll, ...)
  if coll and (t==CS.System.Collections.Generic.Queue_T or t==CS.System.Collections.Generic.Stack_T) then
    return setmetatable(coll, { __index = __mt_index_of_array, __cs2lua_defined = true, __class = t });
  elseif coll and t==CS.System.Collections.Generic.HashSet_T then
    return setmetatable(coll, { __index = __mt_index_of_hashset, __cs2lua_defined = true, __class = t });
	else
	  local obj = nil;
	  if t ~= nil then
	    obj = t(...);
	  else
	    obj = Slua.CreateClass(className, ...);
	  end;
	  if obj then
			if coll ~= nil then
				for i,v in ipairs(coll) do
				  obj:Add(v);
				end;
			end
	    return obj;
	  else
	    return nil;
	  end;
  end;
end;

function delegationwrap(handler)
  local meta = getmetatable(handler);
  if meta and rawget(meta, "__is_delegation") then
    return handler;
  else
    return wrapdelegation{ handler };
  end;
end;

function delegationcomparewithnil(isEvent, t, inf, k, isequal)
  if not t then
    if isequal then 
      return true;
    else
      return false;
    end;
  end;
  local v = t;
  if k then
    v = t[k];  
  end;
  local n = #v;
  if isequal and n==0 then
    return true;
  elseif not isqual and n>0 then
    return true;
  else
    return false;
  end;
end;
function delegationset(isevent, t, intf, k, handler)
  local v = t;
  if k then
    v = t[k];
  end;
  local n = #v;
  for i=1,n do
    table.remove(v);
  end;
  table.insert(v,handler);
end;
function delegationadd(isevent, t, intf, k, handler)
  local v = t;
  if k then
    v = t[k];  
  end;
  table.insert(v, handler);
end;
function delegationremove(isevent, t, intf, k, handler)
  local v = t;
  if k then
    v = t[k];  
  end;
  local find=false;
  local pos = 1;
  for k,v in pairs(v) do
    if v==handler then
      find=true;
      break;
    end;
    pos = pos + 1;
  end;
  if find then
    table.remove(v, pos);
  end;
end;

function externdelegationcomparewithnil(t, inf, k, isequal)
  local v = t;
  if k then
    v = t[k];
  end;
  if isequal and not v then
    return true;
  elseif not isequal and v then
    return true;
  else
    return false;
  end;
end;
function externdelegationset(isevent, t, intf, k, handler)
  if k then
    t[k] = handler;
  else
    t = handler;
  end;
end;
function externdelegationadd(isevent, t, intf, k, handler)
  if k then    
    if isevent then
      t[k](t, "+", handler);
    else
      t[k] = t[k] + handler;
    end;
  else
    t = t + handler;
  end;
end;
function externdelegationremove(isevent, t, intf, k, handler)
  if k then    
    if isevent then
      t[k](t, "-", handler);
    else
      t[k] = t[k] - handler;
    end;
  else
    t = t - handler;
  end;
end;

function getstaticindexer(class, name, ...)
	return class[name](...);
end;
function getinstanceindexer(obj, intf, name, ...)
	return obj[name](obj, ...);
end;

function setstaticindexer(class, name, ...)
	class[name](...);
	return nil;
end;
function setinstanceindexer(obj, intf, name, ...)
	obj[name](obj, ...);
	return nil;
end;

function getexternstaticindexer(class, name, ...)
	return class[...];
end;
function getexterninstanceindexer(obj, intf, name, ...)  
	local args = {...};
	local index = __unwrap_if_string(args[1]);
	local meta = getmetatable(obj);
	if meta then
		local class = rawget(meta, "__class");
		local typename = rawget(meta, "__typename");
  	if class == CS.System.Collections.Generic.List_T then
  	  return obj[index+1];
  	elseif class == CS.System.Collections.Generic.Dictionary_TKey_TValue then
      local v = obj[index];
      if v then
        return v.value;
      else
        return nil;
      end;
    elseif typename == "LuaArray" then
    	return obj[index+1];
    elseif typename == "LuaVarObject" then
    	return obj[index];
    else
    	return obj:getItem(index);
    end;
  end;
end;

function setexternstaticindexer(class, name, ...)	
  return nil;
end;
function setexterninstanceindexer(obj, intf, name, ...)
  local args = {...};
  local num = #args;
	local index = __unwrap_if_string(args[1]);
	local val = args[num];
  local meta = getmetatable(obj);
  if meta then
		local class = rawget(meta, "__class");
		local typename = rawget(meta, "__typename");
    if class == CS.System.Collections.Generic.List_T then
      obj[index+1] = val;
    elseif class == CS.System.Collections.Generic.Dictionary_TKey_TValue then      
      if obj[index] then
        obj[index] = { value=val };
      else
        obj:Add(index, val);
      end;
    elseif typename == "LuaArray" then
    	obj[index+1] = val;
    elseif typename == "LuaVarObject" then
    	obj[index] = val;
    else
    	obj:setItem(index, val);
    end;
  end;
  return nil;
end;

function getstaticelement(class, name, ...)
  return nil;
end;
function getinstanceelement(obj, name, ...)
  return nil;
end;
function setstaticelement(class, name, ...)
  --为了适应表达式内嵌赋值，这个函数需要返回值
  return nil;
end;
function setinstanceelement(obj, name, ...)
  --为了适应表达式内嵌赋值，这个函数需要返回值
  return nil;
end;
function getexternstaticelement(class, name, ...)
  return nil;
end;
function getexterninstanceelement(obj, name, ...)
  return nil;
end;
function setexternstaticelement(class, name, ...)
  --为了适应表达式内嵌赋值，这个函数需要返回值
  return nil;
end;
function setexterninstanceelement(obj, name, ...)
  --为了适应表达式内嵌赋值，这个函数需要返回值
  return nil;
end;

function invokeexternoperator(class, method, ...)
	local args = {...};
	--对slua，对应到lua元表操作符函数的操作符重载cs2lua转lua代码时已经换成对应操作符表达式。
	--执行到这里的应该是无法对应到lua操作符的操作符重载
	local argnum = #args;
	if method=="op_Equality" then
	  if args[1] and args[2] then
	    return args[1]==args[2];
	  elseif not args[1] then
	    return Slua.IsNull(args[2]);
	  elseif not args[2] then
	    return Slua.IsNull(args[1]);
	  else
	    return true;
	  end;
	elseif method=="op_Inequality" then
	  if args[1] and args[2] then
	    return args[1]~=args[2];
	  elseif not args[1] then
	    return not Slua.IsNull(args[2]);
	  elseif not args[2] then
	    return not Slua.IsNull(args[1]);
	  else
	    return false;
	  end;	  
	elseif method=="op_Implicit" then
	  --这里就不仔细判断了，就假定是UnityEngine.Object子类了
	  return not Slua.IsNull(args[1]);
	end;
	if argnum == 1 and args[1] then
	  return args[1][method](...);
	elseif argnum == 2 then
	  if args[1] then
	    return args[1][method](...);
	  elseif args[2] then
	    return args[2][method](...);
	  end;
	end;
	return nil;
end;

function defineentry(class)
  _G.main = function()
    return class;
  end;
end;

function invokewithinterface(obj, intf, method, ...)
	local meta = getmetatable(obj);
	if meta and rawget(meta, "__cs2lua_defined") then
		return obj[method](obj,...);
	else
		return obj[method](obj,...);
	end;
	return nil;
end;
function getwithinterface(obj, intf, property)
	local meta = getmetatable(obj);
	if meta and rawget(meta, "__cs2lua_defined") then
		return obj[property];
	else
		return obj[property];
	end;
	return nil;
end;
function setwithinterface(obj, intf, property, value)
	local meta = getmetatable(obj);
	if meta and rawget(meta, "__cs2lua_defined") then
		obj[property]=value;
	else
		obj[property]=value;
	end;
	return nil;
end;

function invokeforbasicvalue(obj, isEnum, class, method, ...)
	local args = {...};
	local meta = getmetatable(obj);
	if isEnum and method=="ToString" then
	  return class.Value2String[obj];
	end;
	if type(obj)=="string" then
	  local csstr = CS.System.String(obj);
	  return csstr[method](csstr,...);
	elseif meta then
		return obj[method](obj,...);
	elseif method=="CompareTo" then
	  return obj==args[1];
	elseif method=="ToString" then
	  return tostring(obj);
	end;
	return nil;
end;
function getforbasicvalue(obj, isEnum, class, property)
	local meta = getmetatable(obj);
	if type(obj)=="string" then
	  local csstr = CS.System.String(obj);
	  return csstr[property];
	elseif meta then
		return obj[property];
	else
		return obj[property];
	end;
	return nil;
end;
function setforbasicvalue(obj, isEnum, class, property, value)
	local meta = getmetatable(obj);
	if type(obj)=="string" then
	  local csstr = CS.System.String(obj);
	  csstr[property]=value;
	elseif meta then
		obj[property]=value;
	else
		obj[property]=value;
	end;
	return nil;
end;

function invokearraystaticmethod(firstArray, secondArray, method, ...)
  if nil~=firstArray then
    local args = {...};
    local meta = getmetatable(firstArray);    
		if meta and rawget(meta, "__cs2lua_defined") then
      if method=="IndexOf" then
        return firstArray:IndexOf(args[3]);
      elseif method=="Sort" then
        return table.sort(firstArray, function(a, b) return args[3](a, b) < 0 end);
      else
        return nil;
      end;
    else
      --这种情形认为是外部导出的数组调用，直接调导出接口了（由于CS.System.Array有generic成员，这些方法的调用估计会出错）
      CS.System.Array[method](...);
    end;
  else
    return nil;
  end;
end;

--暂时只对整数除法进行特殊处理，运算溢出暂不处理
--__cs2lua_div = 0;
--__cs2lua_mod = 1;
--__cs2lua_add = 2;
--__cs2lua_sub = 3;
--__cs2lua_mul = 4;
--__cs2lua_lshift = 5;
--__cs2lua_rshift = 6;
--__cs2lua_bitand = 7;
--__cs2lua_bitor = 8;
--__cs2lua_bitxor = 9;
--__cs2lua_bitnot = 10;
function invokeintegeroperator(op, luaop, opd1, opd2, type1, type2)
  if op==__cs2lua_div then
    local r;
    if opd1*opd2>0 then
      r = math.floor(opd1/opd2);
    else
      r = -math.floor(-opd1/opd2);
    end;
    return r;
  elseif op==__cs2lua_mod then
    return opd1 % opd2;
  elseif op==__cs2lua_add then
    if type1 then
      return opd1 + opd2;
    else
      return opd2;
    end;
  elseif op==__cs2lua_sub then
    if type1 then
      return opd1 - opd2;
    else
      return -opd2;
    end;
  elseif op==__cs2lua_mul then
    return opd1 * opd2;
  elseif op==__cs2lua_lshift then
    return lshift(opd1, opd2);
  elseif op==__cs2lua_rshift then
    return rshift(opd1, opd2);
  elseif op==__cs2lua_bitand then
    return bitand(opd1, opd2);
  elseif op==__cs2lua_bitor then
    return bitor(opd1, opd2);
  elseif op==__cs2lua_bitxor then
    return bitxor(opd1, opd2);
  elseif op==__cs2lua_bitnot then
    return bitnot(opd1);
  end;
end;

function getiterator(exp, isExtern)
	local meta = getmetatable(exp);
	if meta and rawget(meta, "__cs2lua_defined") then
		local enumer = exp:GetEnumerator();
		return function()
			if enumer:MoveNext() then
				return enumer.Current;
			else
				return nil;
			end;
		end;
	else
		local enumer = exp:GetEnumerator();
		return function()
			if enumer:MoveNext() then
				return enumer.Current.Value;
			else
				return nil;
			end;
		end;
	end;
end;

--命令行开关-usearraygetset开启后，数组的访问会委托到下面2个函数
--这里只实现了一维数组的处理
function arrayget(arr, ...)
  local args = {...};
  local num = #args;
  local ix = args[1];
  local meta = getmetatable(arr);
  if meta and rawget(meta, "__cs2lua_defined") then
    return arr[ix];
  else
    return arr[ix-1];
  end;
end;
function arrayset(arr, ...)
  local args = {...};
  local num = #args;
  local ix = args[1];
  local val = args[num];
  local meta = getmetatable(arr);
  if meta and rawget(meta, "__cs2lua_defined") then
    arr[ix] = val;
  else
    arr[ix-1] = val;
  end;
  return val;
end;