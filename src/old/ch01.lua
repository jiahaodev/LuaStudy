print("Hello lua")

--定义一个阶乘函数
function fact(n)
  if n==0 then
    return 1
  else
    return n*fact(n-1)
  end
end

print("enter a number:")
a= io.read("*number")  --表示要求用户输入一个数字
print(fact(a))