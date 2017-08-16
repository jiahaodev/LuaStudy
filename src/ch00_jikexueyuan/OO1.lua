--面向对象
--实现方式：表 复制， 表的属性 添加


--类   对象  克隆
function clone(tab)
  local ins = {}
  for key, var in pairs(tab) do
  	ins[key] = var
  end
  return ins
end

function copy(dist,tab)
  --将tab的属性  附加 到 dist 上去
   for key, var in pairs(tab) do
   	  dist[key] = var;
   end

end


People = {}

People.new = function(name)
  local self = clone(People)
  self.name = name
  return self
end

People.sayHi = function(self)
  print("People say hi "..self.name)
end


--local p = clone(People)
--p.sayHi(p) 

local p2 = People.new("zhangsan")
p2.sayHi(p2)
p2:sayHi() --默认传入self



--继承
Man = {}
Man.new=function(name)
  local self = People.new(name) --Man继承了Popele的属性
  copy(self,Man)      --并且将Man 特有的属性 添加（copy）到People上去
  return self
end


Man.sayHello = function()
  print("Man say Hello")
end

Man.sayHi = function()
  print("Man say hi")
end

local m = Man.new("Lisi")
m:sayHi()
m:sayHello()


--Man.sayHi = function()
--  print("Man say hi")
--end

















