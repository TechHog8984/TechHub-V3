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

return {lower = tablefindlower, lowerByIndex = tablefindlowerByIndex}
