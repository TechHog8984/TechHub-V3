--credits to https://github.com/Stefanuk12

local players = game:GetService'Players'
local localplayer = players.LocalPlayer

local camera = workspace.CurrentCamera

function isplayervisible(part, partancestor)
	local character = localplayer.Character or localplayer.CharacterAdded:Wait()
	local campos = camera.CFrame.Position

	local vector, onscreen = camera:WorldToViewportPoint(part.Position)

	if onscreen then
		local rayparams = RaycastParams.new()
		rayparams.FilterType = Enum.RaycastFilterType.Blacklist
		rayparams.FilterDescendantsInstances = {camera, character}

		local result = workspace:Raycast(campos, part.Position - campos, rayparams)

		if result then
			local hit = result.Instance

			return not hit or hit:IsDescendantOf(partancestor)
		end
	end

	return false
end

return isplayervisible
