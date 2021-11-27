--slightly modified player handler. might merge into the main one.

local httpget 					= game.HttpGet
local getservice 				= game.GetService

local EventManager 				= assert(loadstring(httpget(game, 'https://raw.githubusercontent.com/TechHog8984/TechHub-V3/main/script/misc/events.lua'))(), 'failed to get event manager')
local PlayerService 			= getservice(game, 'Players')

local Connections 				= {}

local Players = {} do 

	local function PlayerAdded(Player)
		if Player then
			local Table = {}

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
				if Table.CharacterRemoved then
					Table.CharacterRemoved:Fire()
				end
				Table.Character = nil
				if Table.CharacterRemovedConnection then
					Table.CharacterRemovedConnection:Disconnect()
				end
				if Table.PartAddedConnection then
					Table.PartAddedConnection:Disconnect()
				end
				if Table.PartRemovedConnection then
					Table.PartRemovedConnection:Disconnect()
				end
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

			function Table.GetCharacter()
				return Table.Character or Player.Character or Player.CharacterAdded:Wait()
			end

			function Table.GetPart(part)
				local Character = Table.GetCharacter()
				return Character:FindFirstChild(part) or nil
			end

			CharacterAdded(Table.GetCharacter())

			local CharacterAddedConnection = Player.CharacterAdded:connect(CharacterAdded)
			CharacterAddedConnection = CharacterAddedConnection

			table.insert(Connections, CharacterAddedConnection)

			Players[Player] = Table

			Table.Loaded = true
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
end

return Players
