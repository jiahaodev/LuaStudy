--
-- Created by IntelliJ IDEA.
-- User: JiahaoWu
-- Date: 2017/5/9
-- Time: 10:25
-- To change this template use File | Settings | File Templates.
--
print("Hello world");


--定义一个阶乘函数
function fact(n)
    if n == 0 then
        return 1;
    else
        return n * fact(n - 1);
    end
end

print("enter a number:")
print(fact(5))


print (b);
--全局变量赋值
b=10;
print(b);
--全局变量删除
b = nil;
print(b);








