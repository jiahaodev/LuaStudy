--第18章  数学库


--sin / asin
result = math.sin(0.5*math.pi)
result = math.asin(1)
result = result / math.pi
--cos / acos
result = math.cos(0)
result = math.acos(1)
--tan /atan
result = math.tan(0.25*math.pi)
result = math.atan(1)
result = result/math.pi

--deg(弧度变成角度degree) rad（角度变成弧度radian）
result = math.deg(math.pi)
result = math.rad(180)

--abs
local result = math.abs(-100.231e2)
--ceil(天花板) floor（地板）
result = math.ceil(1.5)
result = math.floor(1.5)
--math.exp  e的x次方 
result = math.exp(1)
result = math.log10(100)
result = math.log(2.7182818)
result = math.log(100,10)
--开平方
result = math.sqrt(100)
--math.fmod(x,y) 取余数
result = math.fmod(10,3)
result = 10%0
--math.hug 无限大
result = math.huge
result = math.maxinteger --5.3
result = math.mininteger --5.3
--result = math.tointeger(10.56)--5.3

--最大，最小值
result = math.max(1,2,3,4,5)
result = math.min(1,2,3,4,5)

--设置随机种子
--math.randomseed(os.time())
math.randomseed(tostring(os.time()):reverse())  
--随机数
result = math.random()
result = math.random(0,1)
result = math.random(100,200)
--整数 比较
--result = math.ult(10,100) --5.3

--result = math.type(1) --5.3

print(result)




--灵活编程】
 
function sin(degree)
  local radian = math.rad(degree)
  return math.sin(radian)
end

print(sin(90))

function asin(value)
  return math.asin(value)*180/math.pi
end

print(asin(1))





























