local jiesuan = require("test2.jiesuan");

local record = {}
-- --重点辨别身份，二级缓存
local function getNumRecornize(item)
  local str = type(item) == "string" and item or item.id;
  local startIndex = string.find(str,"%d");
  local tag1 = string.sub(str,startIndex,-4);
  local tag2 = string.sub(str,-3,-1);
  if not record[tag1] then
    record[tag1] = {};
  end
  record[tag1][tag2] = item;
end

local  handleChain;
handleChain = function(tab)
   if tab.id then
      return tab;
   end
   local temp = {};
   local result = {};
   --加key
   for k,item in pairs(tab) do
      local keyContent ={};
      keyContent.key = k;
      keyContent.content = item;
      table.insert(temp,keyContent);
   end
   --排序
   table.sort(temp,function(a,b)
       return a.key < b.key;
   end)
   --key-value -- > list
   for i,v in ipairs(temp) do
      table.insert(result,v.content);
   end
   --递归
   for i,v in ipairs(result) do
      if type(v) == "table" then
        result[i] = handleChain(v);
      end
   end
   return result;
end

local function main()
  --数据特征标识
   for _,item in ipairs(jiesuan) do
      getNumRecornize(item);
  end
  --去除两重标识，并且list排序
  local record = handleChain(record);
  return record;
end

main();






