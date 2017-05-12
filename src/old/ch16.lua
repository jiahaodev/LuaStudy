--面向对象程序设计
print("ok")
--
--Account = {balance = 0}
--function Account:withdraw(v)
--  self.balance = self.balance - v
--end
--
----Account.withdraw(100)
--
----a = Account ; Account = nil
----a.withdraw(100.00)
--
--a1 = Account;
----Account = nil
--a1.withdraw(a1,100.0)
--print(a1.balance)
--
--print("ok2")
--
--a2 = {balance=0,withdraw = Account.withdraw}
--a2.withdraw(a2,260)
--print(a2.balance)


Account = {
  balance = 0,
  withdraw = function(self,v)
    self.balance = self.balance -v
  end
}

function Account:deposit(v)
  self.balance = self.balance +v
end


function Account:new(o)
  o = o or {} --o非空就用o，nil则使用空表   给o赋值
  setmetatable(o,self)  --使用Account自身作为原型
  self.__index = self   --当调用不属于对象的某些操作时，最先会想到prototype（Account）中查找这些操作
  return o
end



a1 = Account
a1.deposit(a1,200)
print(a1.balance)

a1:withdraw(100.0)
print(a1.balance)

a2 = Account:new({balance = 0})
a2:deposit(100.0)
print(a2.balance)






































