local function tablefind(Table, Value)
    for I, V in next, Table do
        if V == Value then
            return I, V
        end
    end
end
local function tablefindByIndex(Table, Index) 
    for I, V in next, Table do
        if I == Index then
            return I, V
        end
    end
end
local function tablefindlower(Table, Value)
    for I, V in next, Table do
        if tostring(V):lower() == tostring(Value):lower() then
            return I, V
        end
    end
end
local function tablefindlowerByIndex(Table, Index)
    for I, V in next, Table do
        if tostring(I):lower() == tostring(Index):lower() then
            return I, V
        end
    end
end

return {find = tablefind, findByIndex = tablefindByIndex, lower = tablefindlower, lowerByIndex = tablefindlowerByIndex}
