--面向对象
--实现方式：闭包

--类 --对象
function People(name)
   local self ={}
   --初始化方式
   local function init()
      self.name = name
   end
   
   self.sayHi = function()
      print("Hi ".. self.name)
   
   end
   
   init()
   return self
end 

local p = People("ZhangSan")
p.sayHi()

-- 类  的继承
function Man(name)
  local self = People(name)
  self.sayHello = function()
    print("Hello "..self.name)
  end
  return self
end
local m = Man("Lisi")
m:sayHi()
m:sayHello()


