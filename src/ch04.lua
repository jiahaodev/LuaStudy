a= "hello".."world"
print(a)
t ={[1]="22",n=10}
t.n=t.n +1
print(t.n)

--多赋值
a,b =10,2*t.n
a,b,c =0,1
print(a,b,c)
c=100
a,b,c = a,b
print(a,b,c)
c=100
a,b = a,b,c
print(a,b,c)

--局部变量与代码块
x=10
local i=1
while i<=x do
  local x=i*2
  print(x)  --local x
  i = i+1
end

print("x:"..x)  -- x

print(i)  --local i
--
--while i<=20 do
--  local x=i*2
--  print(x)  --local x
--  i = i+1
--end

if i>20 then
  local x =15
  print("local x= 15:"..x+2)  --如果存在局部变量，局部变量会覆盖全局变量（以及作用域更大的局部变量）
else
  print(x)  -- 全局变量x
end

-- --使用do...end限制局部变量的作用域
do
  a= 10
  b=100
  local a2 =2*a                       --代码块局部变量
  local d = math.sqrt(b^2-4*a*c)      --全局变量
  x1 = (-b + d)/a2
  x2 = (-b - d)/a2
end
print(a2,d,x1,x2)

--控制结构语句
--  --if elseif else
if 0 then
  print("0 is true")
end

if "" then
  print('"" is true')
end

if a>0 then
  print("a > 0 ")
else
  print("a <=0")
end
a=22
if a <0 then
  print("a < 0")
elseif a<10 then
  print("a >= 0 and a <10")
elseif a<20 then
  print("a >=10 and a<20" )
else
  print("a >=20")
end


-- --while语句块
a=22
while a>0 do
  print(a)
  a=a-1
end

-- --repeat。。。until语句块
print("**************")
repeat
  print(a)
  a = a+1
until(a<100)


-- --for语句块
-- -- --第一类（数值for）
for i=0,100,5 do
  print("i = "..i )
end
print("*****")
for i=100,1,-1 do
  print("i = "..i )
end
print("*****")

player = 1
function play()
  player = player+1
  return player
end

for i = 1,100,1 do
  if( i==2) then
    i=50
  end
  print("i:"..i)
end
print(i)
print("****************")


-- -- -- 第二类（范型for）
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}

revDays = {["Sunday"]=1,
  ["Monday"]=2,
  ["Tuesday"]=3,
  ["Wednesday"]=4,
  ["Thursday"]=5,
  ["Friday"]=6,
  ["Saturday"]=7
}

x= "Tuesday"
print(revDays[x])
print(revDays.Tuesday)

revDays = {}
for i,v in ipairs(days) do
  revDays[v] = i
  print(revDays[v])
end
print("******")
a = {1,2,3,4,5,6,7}

for i=1,#a do
  print("a[i]:"..a[i])
  i = i+1
end




 