

--合并两个table
function MergeTables(...)
    local tabs = {...}
    if not tabs then
        return {}
    end
    local origin = tabs[1]
    for i = 2,#tabs do
        if origin then
            if tabs[i] then
                for k,v in pairs(tabs[i]) do
                    table.insert(origin,v)
                end
            end
        else
            origin = tabs[i]
        end
    end
    return origin
end


table1 = {1,2,3}
table2 = {3,4,5}

GetMergeTable = MergeTables(table1,table2)

for i,v in ipairs(GetMergeTable) do
    print(i,v)
end