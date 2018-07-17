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

--交互模式运行
-- a = io.read("*number")

--测试模式
a = 5

print(fact(a))


print (b);
--全局变量赋值
b=10;
print(b);
--全局变量删除
b = nil;
print(b);

--启动参数
--> lua 脚本名称 a b c     
--存在一个全局变量arg ，用于记录参数 
--如： lua -e "sin=math.sin" script a b
--首先， arg[1] = a, arg[2] = b
--       arg[0] = "script"
--		 arg[-1] = "sin=math.sin"
--		 arg[-2] = "-e"
--		 arg[-3] = "lua"




