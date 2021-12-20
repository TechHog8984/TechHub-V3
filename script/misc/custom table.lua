local old = table
local table = {}

function table.count(Table)
    local count = 0
    for I,V in next, Table do
        if V then
            count += 1
        end
    end
    return count
end

function table.insert(Table, Value)
    local length = table.count(Table)

    Table[length + 1] = Value
end

function table.find(Table, Value)
    for I, V in next, Table do
        if V and Value and V == Value then
            return I, V
        end
    end
end
function table.findbyindex(Table, Index)
	for I, V in next, Table do
		if I and V and Index and I == Index then
			return I, V
		end
	end
end

function table.findlower(Table, Value)
    for I, V in next, Table do
        if V and Value and tostring(V):lower() == tostring(Value):lower() then
            return I, V
        end
    end
end
function table.findlowerbyindex(Table, Index)
	for I, V in next, Table do
        if I and Index and tostring(I):lower() == tostring(Index):lower() then
            return I, V
        end
    end
end

function table.remove(Table, Value)
    local index = (table.find(Table, Value))
    if index then
        Table[index] = nil
    else
        --return error(tostring(Value) .. ' does not exist in table "' .. tostring(Table) .. '"', 2)
    end
end
function table.removebyindex(Table, Index)
    if Table[Index] ~= nil then
        Table[Index] = nil
    else
        --return error(tostring(Index) .. ' is not a valid index in table "' .. tostring(Table) .. '"', 2)
    end
end

return table, old
