--第6章   深入函数

--a = {p=print}
--a.p("Hello world")
--
--print = math.sin
--a.p(print(1))
--sin = a.p
--sin(10,30)


--输出一个表全部内容的函数
function printTable(tab)
    local num = #tab
    for i=1,num do
      print(tab[i])
    end
end

--
XXX = "210.26.30.34"
network ={
  {name = "g",IP=XXX};
  {name = "a",IP=XXX},
  {name = "lua",IP=XXX},
  {name = "d",IP=XXX};
}

table.sort(network,function(a,b)
  return(a.name < b.name)
end)

for i,v in ipairs(network) do
  print(i..":"..v.name)
end

--求导
function derivative(f,delta)
  delta = delta or 1e-4
  return function(x)
            return  (f(x+delta)-f(x))/delta
         end
end


  names = {"Peter","Paul","Mary","Alex"}
  grades = {Mary =10,Paul = 7,Peter = 8}
function sortbygrade(names,grades)
  table.sort(names,
          function(n1,n2)
            return grades[n1] > grades[n2]        
          end)
end

printTable(names)


--closure
function newCounter()
  local i = 0
  return function()
            i = i + 1;
            return i;
         end
end

c1 = newCounter()
c2 = newCounter()

print(c1())
print(c1())
print(c2())
print(c1())


function digitButton(digit)
  return Button{label = tostring(digit),
                action = function()
                            add_to_display(digit)
                          end
               }
end


open = function(filename,mode)
    print("Open File Finish:"..filename)
end

open("dsf")

do
  local oldOpen = open
  local access_ok = function(filename,mode)
    if mode then
      return true
    end
  end
  
  open = function(filename,mode)
    if access_ok(filename,mode) then
      return oldOpen(filename,mode)
    else
      print ("access denied:"..filename)
    end
  end
end

open("dsf")
open("newOpen","ok")



--非全局函数
Lib ={}
Lib.foo = function (x,y) 
      return x+y;
end
Lib.goo = function (x,y)
      return x-y;
end

Lib2={
  foo = function (x,y) 
      return x+y;
  end,
  goo = function (x,y)
        return x-y;
  end
}

Lib3 ={}
function Lib3.foo(x,y) 
    return x+y
end

local factu 
factu= function(n)
  if n== 0 then
    return 1
  else
    return n*factu(n-1)
  end
end

print(factu(10))











