--第9章 ：协同程序

--9.1 协同程序的基础

co = coroutine.create(function () 
                        print("hi,i'm coroutine") 
                      end)
print(co)

print(coroutine.status(co))

coroutine.resume(co)


co = coroutine.create(function() 
                        for i = 1,10 do
                          print("co",i);
                          coroutine.yield()
                        end
                      end)
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
print(coroutine.resume(co))

