--13章, Metatables and Metamethods

--t = {}
--print(getmetatable(t))
--
--t1 = {}
--setmetatable(t,t1)
--print(getmetatable(t))
--print(assert(getmetatable(t)==t1))

--13.1算术运算的Metatablethods
Set = {}
Set.mt = {}  --元表

function Set.new(t)
   local set = {}
   setmetatable(set,Set.mt)
   for _,l in ipairs(t) do set[l]=true end
   return set 
end


function Set.union(a,b)
  local res = Set.new{}
  for k in pairs(a) do res[k] =true end
  for k in pairs(b) do res[k] =true end
  return res 
end
--为metattable增加_add函数
Set.mt.__add = Set.union


function Set.intersection(a,b)
  local res = Set.new({})
  for k in pairs(a) do
    res[k] = b[k]
  end
  return res
end

Set.mt.__mul = Set.intersection

function Set.toString(set)
   local s = "{"
   local sep = ""
   for e in pairs(set) do
      s = s..sep..e
      sep = ", "
   end
   return s.."}"
end

function Set.print(s)
   print(Set.toString(s))
end


s1 = Set.new({10,20,30,45})
s2 = Set.new({10,324,100,80})
print(getmetatable(s1))
print(getmetatable(s2))

s3 = s1 + s2
Set.print(s3)

s4 = (s1 + s2)*s1
Set.print(s4)



-- __index
Window = {}
Window.prototype = {x=0,y=0,width =100,height =100}
Window.mt = {}
--Window.mt.__index = function(tab,key)
--  return Window.prototype[key]
--end
Window.mt.__index = Window.prototype

function Window.new(o)
  setmetatable(o,Window.mt)
  return o
end

w = Window.new{x=10,y=20}
print(w.width)

--有默认值的表
function setDefault(t,d)
  local mt = {__index = function() return d end}
  setmetatable(t,mt)
end

tab = {x=10,y =20}
print(tab.x,tab.z)
setDefault(tab,0)  --
print(tab.x,tab.z)

--监控表
t = {} 
print(t)
local _t = t

t = {}
print(t)

local mt = {
  __index = function(t,key)
   print("*access to element "..tostring(key))
   return _t[key]
  end,
  
  __newindex = function(t,k,v)
   print("*update of element "..tostring(k).." to "..tostring(v))
   _t[k] = v
  end
  
}

setmetatable(t,mt)
t[2] = "hello"
print(t[2])
print(t[2])












































