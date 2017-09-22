require("dump")

--[[
前提
假设 一个小怪 有三种属性，等级（level）、品质（quality）、id（pid）数据最大999
我们需要对他们进行排序，两种排序情况，第一是单一属性排序，比如按照等级进行排序，或者多种属性进行优先级排序。

需求如下：
--排列顺序优先级从高到低依次为：
    --第一：等级由高到低；
    --第二：稀有度由高到低；
    --第三：伙伴ID从高到低。
]]


local MonsterList = {
    {level = 1, quality = 2,  pid = 32},
    {level = 2, quality = 12,   pid = 33},
    {level = 3, quality = 12,   pid = 43},
    {level = 1, quality = 22,   pid = 13},
    {level = 5, quality = 6,  pid = 39},
    {level = 1, quality = 32,   pid = 23},
    {level = 7, quality = 2,  pid = 13},
    {level = 5, quality = 6,  pid = 41},
    {level = 9, quality = 1,  pid = 3},
    {level = 4, quality = 12,   pid = 33},
    {level = 4, quality = 2,  pid = 43},
    {level = 8, quality = 13,   pid = 63},
    {level = 7, quality = 21,   pid = 13},
    {level = 3, quality = 7,  pid = 43},
    {level = 2, quality = 11,   pid = 53},
}

local function main()
  ---执行你的代码，dump出排序结果
--  dump(MonsterList)
    --解法一：
--   table.sort(MonsterList,function(a,b)
--     if a.level == b.level then
--         if a.quality == b.quality then
--            return a.pid > b.pid;
--         end
--         return a.quality > b.quality;
--     end
--     return a.level > b.level
--  end)
  --解法二：拓展性;灵活性差
--  local priority = {[1] ="level",[2] ="quality",[3]="pid",};
--  table.sort(MonsterList,function(a,b)
--    for _,v in ipairs(priority) do
--      if a[v] ~= b[v] then
--        return a[v] > b[v];
--      end
--    end
--    local lastIndex = #priority;
--    return a[priority[lastIndex]] < b[priority[lastIndex]];
--  end)
  
  --解法三：冗余，拓展接口，高灵活性，可读取实时配置
  --inc 增长， dec下降
   local priority = {
                       [1] ={key="level",rank="dec"},
                       [2] ={key="quality",rank="dec"},
                       [3] ={key="pid",rank="dec"},
                     };
   table.sort(MonsterList,function(a,b)
      for _,v in ipairs(priority) do
        local key = v.key;
        local rank = v.rank;
        if a[key] ~= b[key] then
          return rank =="inc" and a[key] < b[key] or a[key] > b[key];
        end
      end
      --边界处理
      local last = #priority;
      local lastKey = priority[last].key;
      local lastRank = priority[last].rank;
      return lastRank == "inc" and a[lastKey] < b[lastKey] or a[lastKey] > b[lastKey];
  end)
  
  dump(MonsterList);
end
main()