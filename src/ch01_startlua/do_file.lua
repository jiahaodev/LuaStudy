--dofile功能测试
--
--测试方法
--在交互模式中输入:
--dofile("do_file.lua")
---ps:注意，每次执行dofile("XXXX.lua")都可以重新加载代码
--n=norm(3,4)
--print(twice(n))

function norm(x,y)
	-- body
	return (x^2 + y^2)^0.5
end


function twice(x)
	-- body
	return 2*x
end

function third(x)
	return 3 * x
end






