function minmax(decider, ...)
    if decider and (decider == 'max' or decider == 'min') then
        if decider == 'max' or decider == 'min' then
            local value = nil
            for i,v in next, {...} do
                if not value then
                    value = v
                elseif (decider == 'max' and v > value) or (decider == 'min' and v < value) then
                    value = v
                end
            end

            return value
        end
    else
        return error('expected \'max\' or \'min\' (arg 1), got \'' .. tostring(decider) .. '\'')
    end
end

return setmetatable({}, {
    __index = function(self, key)
        return function(...)
            return minmax(key, ...)
        end
    end
})
