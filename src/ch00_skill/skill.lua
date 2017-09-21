--技巧1： 实现continue
--技术点：在需要实现continue功能的循环内，添加一层(repeat ...until true),
--原理：默认执行一次循环，因为until 后的表达式设为true,因此repeat...util“最多运行一次机会退出”，即一层包装的作用；
--    而通过条见判断，在一定条件下直接跳出repeat..until循环，不执行其中“后续运算”
for i = 1, 100 do
  repeat 
    if(i==15) then
      print("***find the num : "..i)
      break;        --这里实现其他语言中continue的逻辑
    end  
    --执行“后续运算”
    print("current num is :"..i)
  
  until true
end
