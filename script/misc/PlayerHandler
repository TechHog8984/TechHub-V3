local EventManager = loadstring(game:HttpGet('https://pastebin.com/raw/3YaYx4gi'))()

local PlayerService = game:GetService'Players'
local RunService = game:GetService'RunService'
local LocalPlayer = PlayerService.LocalPlayer

local Connections = {}
local Players = {}

local wait = function(t)if t then return wait(t) end;return RunService.Heartbeat:Wait()end

local function PlayerAdded(Player)
	if Player and Player ~= LocalPlayer then
		local Table = {}
		local Character = Player.Character or Player.CharacterAdded:Wait()
		function Table.GetCharacter()
			return Table.Character or Player.Character or Player.CharacterAdded:Wait()
		end

		Table.CharacterAdded = EventManager:CreateEvent(Player.Name .. ' - CharacterAdded')
		Table.CharacterRemoved = EventManager:CreateEvent(Player.name .. ' - CharacterRemoved')
		Table.HumanoidAdded = EventManager:CreateEvent(Player.Name .. ' - HumanoidAdded')
		Table.HumanoidRemoved = EventManager:CreateEvent(Player.Name .. ' - HumanoidRemoved')
		Table.HumanoidRootPartAdded = EventManager:CreateEvent(Player.Name .. ' - HumanoidRootPartAdded')
		Table.HumanoidRootPartRemoved = EventManager:CreateEvent(Player.Name .. ' - HumanoidRootPartRemoved')

		function PartRemoved(Part)
			if Part then
				local Name = Part.Name or Part
				if Name == 'Humanoid' then
					Table.HumanoidRemoved:Fire()
				elseif Name == 'HumanoidRootPart' then
					Table.HumanoidRootPartRemoved:Fire()
				end
			end
		end

		function PartAdded(Part)
			if Part then
				local Name = Part.Name or Part
				if Name == 'Humanoid' then
					Table.HumanoidAdded:Fire()
				elseif Name == 'HumanoidRootPart' then
					Table.HumanoidRootPartAdded:Fire()
				end
			end
		end

		function CharacterRemoved()
			PartRemoved('Humanoid')
			PartRemoved('HumanoidRootPart')
			Table.CharacterRemoved:Fire()
			Table.Character = nil
			Table.CharacterRemovedConnection:Disconnect()
			Table.PartAddedConnection:Disconnect()
			Table.PartRemovedConnection:Disconnect()
		end

		function CharacterAdded(Character)
			if Character then
				Table.Character = Character
				Table.CharacterAdded:Fire(Character)

				CharacterRemovedConnection = Character:WaitForChild'Humanoid'.Died:Connect(CharacterRemoved)
				PartAddedConnection = Character.ChildAdded:Connect(PartAdded)
				PartRemovedConnection = Character.ChildRemoved:Connect(PartRemoved)

				Table.CharacterRemovedConnection = CharacterRemovedConnection
				Table.PartAddedConnection = PartAddedConnection
				Table.PartRemovedConnection = PartRemovedConnection

				PartAdded( (Character:FindFirstChild'Humanoid' or nil) )
				PartAdded( (Character:FindFirstChild'HumanoidRootPart' or nil) )


				table.insert(Connections, CharacterRemovedConnection)
				table.insert(Connections, PartAddedConnection)
				table.insert(Connections, PartRemovedConnection)
			end
		end
		
		CharacterAdded(Table.GetCharacter())

		local CharacterAddedConnection = Player.CharacterAdded:connect(CharacterAdded)
		CharacterAddedConnection = CharacterAddedConnection

		table.insert(Connections, CharacterAddedConnection)

		Players[Player] = Table
	end
end
local function PlayerRemoved(Player)
	if Player and Player ~= LocalPlayer and Players[Player] then
		local Table = Players[Player]

		Players[Player] = nil
		Table = nil
	end
end

for Index, Player in next, PlayerService:GetPlayers() do
	PlayerAdded(Player)
end

table.insert(Connections, PlayerService.PlayerAdded:Connect(PlayerAdded))
table.insert(Connections, PlayerService.PlayerRemoving:Connect(PlayerRemoved))

KeyDownConnection = LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == '=' then
		for Index, Connection in next, Connections do
			Connection:Disconnect()
			Connection = nil
		end

		KeyDownConnection:Disconnect()
	end
end)

return Players
