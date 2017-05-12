Account ={balance =0}

function Account:new(o)
   o = o or {}
   setmetatable(o,self)
   self.__index = self
   return o
end

function Account:deposit(v)
   self.balance = self.balance + v
end

function Account:withdraw(v)
   if v > self.balance then    --不允许超额 取款
    error "insufficient funds" 
   end
   self.balance = self.balance - v
end




--继承
SpecialAccount = Account:new() --使用空类（nil）,从Account继承所有操作
s = SpecialAccount:new{limit=1000.00}

function SpecialAccount:withdraw(v)
  if v-self.balance >= self:getgetLimit() then
    error "insufficient funds"
  end
  self.balance = self.balance - v
end