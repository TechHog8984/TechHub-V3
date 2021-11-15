local EventManager = {events = {}}

function EventManager:GetEvents()
	return self.events
end
function EventManager:GetEvent(id)
	if self[id] then
		return self[id]
	end
	return nil
end

function EventManager:CreateEvent(id)
	local event = {}
	local connections = {}

	function event:Connect(func)
		local connection = {func = func, enabled = true}

		function connection:Disconnect()
			connection.func = nil
			connection.enabled = false
			connection = nil
		end

		table.insert(connections, connection)
		return connection
	end

	function event:DisconnectAll()
		for i, connection in pairs(connections) do
			connection:Disconnect()
		end
		connections = {}
	end

	function event:Fire(...)
		local args = {...}
		for i, connection in pairs(connections) do
			if connection and connection.func and connection.enabled == true then
				local success, err = pcall(coroutine.wrap(function()connection.func(table.unpack(args))end))
				if not success and err then
					error(err, 2)
				end
			end
		end
	end

	local realid = id or #self
	self[realid] = event
	return event
end

return EventManager
