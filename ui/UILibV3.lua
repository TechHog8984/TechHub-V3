local function creategui()
	--GuiToLua V3

	--objects
	local V3_library = Instance.new'ScreenGui'

	local mainframe = Instance.new'Frame'
	local sectionscontainer = Instance.new'ScrollingFrame'
	local sectiontemplate = Instance.new'Frame'
	local UIListLayout = Instance.new'UIListLayout'
	local dropdowntemplate = Instance.new'TextButton'
	local text = Instance.new'TextLabel'
	local dropdowncorner = Instance.new'UICorner'
	local textboxtemplate = Instance.new'TextBox'
	local textboxcorner = Instance.new'UICorner'
	local labeltemplate = Instance.new'TextLabel'
	local labelcorner = Instance.new'UICorner'
	local buttontemplate = Instance.new'TextButton'
	local text__2 = Instance.new'TextLabel'
	local buttoncorner = Instance.new'UICorner'
	local sidebar = Instance.new'Frame'
	local sectionbuttontemplate = Instance.new'TextButton'
	local text__3 = Instance.new'TextLabel'
	local selected = Instance.new'TextLabel'
	local UIListLayout__2 = Instance.new'UIListLayout'
	local sideline = Instance.new'TextLabel'
	local sideline__2 = Instance.new'TextLabel'
	local subtitle = Instance.new'TextLabel'
	local title = Instance.new'TextLabel'
	local framecorner = Instance.new'UICorner'
	local close = Instance.new'TextButton'
	local minimize = Instance.new'TextButton'

	--properties
	V3_library.Name = 'V3 library'
	V3_library.Parent = game:GetService'Players'.LocalPlayer:WaitForChild('PlayerGui', math.huge)
	V3_library.ResetOnSpawn = false
	V3_library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	mainframe.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	mainframe.Name = 'mainframe'
	mainframe.Parent = V3_library
	mainframe.Position = UDim2.new(UDim.new(0, 276), UDim.new(0, 202))
	mainframe.Size = UDim2.new(UDim.new(0, 505), UDim.new(0, 321))

	sectionscontainer.Active = true
	sectionscontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sectionscontainer.BackgroundTransparency = 1
	sectionscontainer.BorderSizePixel = 0
	sectionscontainer.Name = 'sectionscontainer'
	sectionscontainer.Parent = mainframe
	sectionscontainer.Position = UDim2.new(UDim.new(0.27178418636322, 0), UDim.new(0.064171142876148, 0))
	sectionscontainer.Size = UDim2.new(UDim.new(0.72821575403214, 0), UDim.new(0.93582886457443, 0))
	sectionscontainer.CanvasSize = UDim2.new(UDim.new(0, 100), UDim.new(0, 100))
	sectionscontainer.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	sectionscontainer.ScrollBarImageTransparency = 1
	sectionscontainer.ScrollBarThickness = 0
	sectionscontainer.ScrollingEnabled = false

	sectiontemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sectiontemplate.BackgroundTransparency = 1
	sectiontemplate.BorderSizePixel = 0
	sectiontemplate.Name = 'sectiontemplate'
	sectiontemplate.Parent = sectionscontainer
	sectiontemplate.Position = UDim2.new(UDim.new(0, 0), UDim.new(0.029411720111966, 0))
	sectiontemplate.Size = UDim2.new(UDim.new(1, 0), UDim.new(0.97058820724487, 0))
	sectiontemplate.Visible = false

	UIListLayout.Padding = UDim.new(0.029999999329448, 0)
	UIListLayout.Parent = sectiontemplate
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	dropdowntemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	dropdowntemplate.BackgroundTransparency = 1
	dropdowntemplate.BorderSizePixel = 0
	dropdowntemplate.Name = 'dropdowntemplate'
	dropdowntemplate.Parent = sectiontemplate
	dropdowntemplate.Size = UDim2.new(UDim.new(0.94300001859665, 0), UDim.new(0.063000001013279, 0))
	dropdowntemplate.Visible = false
	dropdowntemplate.Font = Enum.Font.SourceSans
	dropdowntemplate.Text = ''
	dropdowntemplate.TextColor3 = Color3.fromRGB(0, 0, 0)
	dropdowntemplate.TextSize = 14

	text.BackgroundColor3 = Color3.fromRGB(212, 124, 0)
	text.BorderSizePixel = 0
	text.Name = 'text'
	text.Parent = dropdowntemplate
	text.Size = UDim2.new(UDim.new(0.99999982118607, 0), UDim.new(1, 0))
	text.Font = Enum.Font.Ubuntu
	text.Text = 'dropdown'
	text.TextColor3 = Color3.fromRGB(255, 255, 255)
	text.TextSize = 17

	dropdowncorner.CornerRadius = UDim.new(0, 4)
	dropdowncorner.Name = 'dropdowncorner'
	dropdowncorner.Parent = text

	textboxtemplate.BackgroundColor3 = Color3.fromRGB(212, 124, 0)
	textboxtemplate.BorderSizePixel = 0
	textboxtemplate.Name = 'textboxtemplate'
	textboxtemplate.Parent = sectiontemplate
	textboxtemplate.Size = UDim2.new(UDim.new(0.94300001859665, 0), UDim.new(0.063000001013279, 0))
	textboxtemplate.Visible = false
	textboxtemplate.Font = Enum.Font.Ubuntu
	textboxtemplate.PlaceholderColor3 = Color3.fromRGB(202, 202, 202)
	textboxtemplate.PlaceholderText = 'textbox'
	textboxtemplate.Text = ''
	textboxtemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	textboxtemplate.TextSize = 17

	textboxcorner.CornerRadius = UDim.new(0, 4)
	textboxcorner.Name = 'textboxcorner'
	textboxcorner.Parent = textboxtemplate

	labeltemplate.BackgroundColor3 = Color3.fromRGB(212, 124, 0)
	labeltemplate.BorderSizePixel = 0
	labeltemplate.Name = 'labeltemplate'
	labeltemplate.Parent = sectiontemplate
	labeltemplate.Position = UDim2.new(UDim.new(0.028490029275417, 0), UDim.new(0.0080213900655508, 0))
	labeltemplate.Size = UDim2.new(UDim.new(0.943019926548, 0), UDim.new(0.063360877335072, 0))
	labeltemplate.Visible = false
	labeltemplate.Font = Enum.Font.Ubuntu
	labeltemplate.Text = 'textlabel'
	labeltemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	labeltemplate.TextSize = 17

	labelcorner.CornerRadius = UDim.new(0, 4)
	labelcorner.Name = 'labelcorner'
	labelcorner.Parent = labeltemplate

	buttontemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	buttontemplate.BackgroundTransparency = 1
	buttontemplate.BorderSizePixel = 0
	buttontemplate.Name = 'buttontemplate'
	buttontemplate.Parent = sectiontemplate
	buttontemplate.Size = UDim2.new(UDim.new(0.94300001859665, 0), UDim.new(0.063000001013279, 0))
	buttontemplate.Visible = false
	buttontemplate.Font = Enum.Font.SourceSans
	buttontemplate.Text = ''
	buttontemplate.TextColor3 = Color3.fromRGB(0, 0, 0)
	buttontemplate.TextSize = 14

	text__2.BackgroundColor3 = Color3.fromRGB(212, 124, 0)
	text__2.BorderSizePixel = 0
	text__2.Name = 'text'
	text__2.Parent = buttontemplate
	text__2.Size = UDim2.new(UDim.new(0.99999982118607, 0), UDim.new(1, 0))
	text__2.Font = Enum.Font.Ubuntu
	text__2.Text = 'textbutton'
	text__2.TextColor3 = Color3.fromRGB(255, 255, 255)
	text__2.TextSize = 17

	buttoncorner.CornerRadius = UDim.new(0, 4)
	buttoncorner.Name = 'buttoncorner'
	buttoncorner.Parent = text__2

	sidebar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sidebar.BackgroundTransparency = 1
	sidebar.BorderSizePixel = 0
	sidebar.Name = 'sidebar'
	sidebar.Parent = mainframe
	sidebar.Position = UDim2.new(UDim.new(0, 0), UDim.new(0.17112299799919, 0))
	sidebar.Size = UDim2.new(UDim.new(0.26763486862183, 0), UDim.new(0.82866042852402, 0))

	sectionbuttontemplate.AutoButtonColor = false
	sectionbuttontemplate.BackgroundColor3 = Color3.fromRGB(212, 124, 0)
	sectionbuttontemplate.BackgroundTransparency = 1
	sectionbuttontemplate.BorderSizePixel = 0
	sectionbuttontemplate.Name = 'sectionbuttontemplate'
	sectionbuttontemplate.Parent = sidebar
	sectionbuttontemplate.Position = UDim2.new(UDim.new(-0.080333203077316, 0), UDim.new(-0.0029154131188989, 0))
	sectionbuttontemplate.Size = UDim2.new(UDim.new(1, 0), UDim.new(0.10526315867901, 0))
	sectionbuttontemplate.Visible = false
	sectionbuttontemplate.Font = Enum.Font.Nunito
	sectionbuttontemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	sectionbuttontemplate.TextSize = 21
	sectionbuttontemplate.TextTransparency = 1
	sectionbuttontemplate.TextWrapped = true
	sectionbuttontemplate.TextXAlignment = Enum.TextXAlignment.Left

	text__3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	text__3.BackgroundTransparency = 1
	text__3.BorderSizePixel = 0
	text__3.Name = 'text'
	text__3.Parent = sectionbuttontemplate
	text__3.Position = UDim2.new(UDim.new(0.08333333581686, 0), UDim.new(0, 0))
	text__3.Size = UDim2.new(UDim.new(0.85271316766739, 0), UDim.new(1, 0))
	text__3.Font = Enum.Font.Ubuntu
	text__3.Text = 'Template'
	text__3.TextColor3 = Color3.fromRGB(255, 255, 255)
	text__3.TextSize = 14
	text__3.TextXAlignment = Enum.TextXAlignment.Left

	selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	selected.BorderSizePixel = 0
	selected.Name = 'selected'
	selected.Parent = sectionbuttontemplate
	selected.Position = UDim2.new(UDim.new(0.082999996840954, 0), UDim.new(0.89999997615814, 0))
	selected.Size = UDim2.new(UDim.new(0.85300004482269, 0), UDim.new(0.082999996840954, 0))
	selected.Font = Enum.Font.SourceSans
	selected.Text = ''
	selected.TextColor3 = Color3.fromRGB(0, 0, 0)
	selected.TextSize = 14

	UIListLayout__2.Parent = sidebar
	UIListLayout__2.SortOrder = Enum.SortOrder.LayoutOrder

	sideline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sideline.BorderSizePixel = 0
	sideline.Name = 'sideline'
	sideline.Parent = mainframe
	sideline.Position = UDim2.new(UDim.new(0, 0), UDim.new(0.16310161352158, 0))
	sideline.Size = UDim2.new(UDim.new(0.27178424596786, 0), UDim.new(0.0062305293977261, 0))
	sideline.Font = Enum.Font.SourceSans
	sideline.Text = ''
	sideline.TextColor3 = Color3.fromRGB(0, 0, 0)
	sideline.TextSize = 14

	sideline__2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sideline__2.BorderSizePixel = 0
	sideline__2.Name = 'sideline'
	sideline__2.Parent = mainframe
	sideline__2.Position = UDim2.new(UDim.new(0.27128714323044, 0), UDim.new(0.06341315060854, 0))
	sideline__2.Size = UDim2.new(UDim.new(0.72871285676956, 0), UDim.new(0.0062305293977261, 0))
	sideline__2.Font = Enum.Font.SourceSans
	sideline__2.Text = ''
	sideline__2.TextColor3 = Color3.fromRGB(0, 0, 0)
	sideline__2.TextSize = 14

	subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	subtitle.BackgroundTransparency = 1
	subtitle.BorderSizePixel = 0
	subtitle.Name = 'subtitle'
	subtitle.Parent = mainframe
	subtitle.Position = UDim2.new(UDim.new(0.022302905097604, 0), UDim.new(0.064171120524406, 0))
	subtitle.Size = UDim2.new(UDim.new(0.24481327831745, 0), UDim.new(0.043613705784082, 0))
	subtitle.Font = Enum.Font.Ubuntu
	subtitle.Text = 'subtitle'
	subtitle.TextColor3 = Color3.fromRGB(188, 188, 188)
	subtitle.TextSize = 12
	subtitle.TextXAlignment = Enum.TextXAlignment.Left

	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderSizePixel = 0
	title.Name = 'title'
	title.Parent = mainframe
	title.Position = UDim2.new(UDim.new(0.022302905097604, 0), UDim.new(0, 0))
	title.Size = UDim2.new(UDim.new(0.24481327831745, 0), UDim.new(0.093457944691181, 0))
	title.Font = Enum.Font.Ubuntu
	title.Text = 'title'
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextSize = 21
	title.TextXAlignment = Enum.TextXAlignment.Left

	framecorner.CornerRadius = UDim.new(0, 4)
	framecorner.Name = 'framecorner'
	framecorner.Parent = mainframe

	close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	close.BackgroundTransparency = 1
	close.BorderSizePixel = 0
	close.Name = 'close'
	close.Parent = mainframe
	close.Position = UDim2.new(UDim.new(0.96563249826431, 0), UDim.new(0, 0))
	close.Size = UDim2.new(UDim.new(0, 17), UDim.new(0, 17))
	close.Font = Enum.Font.Code
	close.Text = 'X'
	close.TextColor3 = Color3.fromRGB(255, 255, 255)
	close.TextSize = 21

	minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	minimize.BackgroundTransparency = 1
	minimize.BorderSizePixel = 0
	minimize.Name = 'minimize'
	minimize.Parent = mainframe
	minimize.Position = UDim2.new(UDim.new(0.91810774803162, 0), UDim.new(0, 0))
	minimize.Size = UDim2.new(UDim.new(0, 17), UDim.new(0, 17))
	minimize.Font = Enum.Font.Code
	minimize.Text = '-'
	minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
	minimize.TextSize = 21

	return V3_library, mainframe, title, subtitle, sidebar, sectionbuttontemplate, sectiontemplate, labeltemplate, buttontemplate, textboxtemplate, dropdowntemplate, minimize, close
end

local function clone(object)
	local c = object:Clone()

	c.Parent = object.Parent

	return c
end
local function smoothdrag(frame)
	local dragToggle = nil
	local dragSpeed = .25
	local dragInput = nil
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed, 2), {Position = Position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end

local function tween(object, time, info)
	return game:GetService'TweenService':Create(object, TweenInfo.new(time, 8), info)
end

local library = {}
local events = loadstring(game:HttpGet('https://pastebin.com/raw/3YaYx4gi'))()

function library:CreateGui(guiname, titletext, subtitletext)
	local object = {}
	local sections = {}

	local selectedsection = nil

	local guiname = guiname or 'GUI'
	local titletext = titletext or guiname
	local subtitletext = subtitletext or 'subtitle'

	local gui, mainframe, title, subtitle, sidebar, sectionbuttontemplate, sectiontemplate, labeltemplate, buttontemplate, textboxtemplate, dropdowntemplate, minimize, close = creategui()

	gui.Name = guiname
	title.Text = titletext
	subtitle.Text = subtitletext

	local closeEvent = events:CreateEvent('close')

	function object:GetCloseEvent()
		return closeEvent
	end

	close.MouseButton1Click:connect(function()
		closeEvent:Fire()
		gui:Destroy()
	end)

	function object:SetTitle(text)
		title.Text = text or title.Text
	end
	function object:SetSubtitle(text)
		subtitle.Text = text or subtitle.Text
	end

	function object:CreateSection(sectionName)
		local object = {}
		local section = {}

		local sectionName = sectionName or 'section'

		local sectionframe = clone(sectiontemplate)
		local sectionbutton = clone(sectionbuttontemplate)

		sectionframe.Name = sectionName
		sectionframe.Visible = true
		sectionframe.Position = UDim2.new(0, 0, -1, 0)

		sectionbutton.text.Text = sectionName
		sectionbutton.Name = sectionName
		sectionbutton.Visible = true

		local sectionbuttonEnter = tween(sectionbutton, .35, {BackgroundTransparency = 0})
		local sectionbuttonLeave = tween(sectionbutton, .35, {BackgroundTransparency = 1})

		local lookingatsectionbutton = false
		local lookingatsectionbuttontext = false

		sectionbutton.MouseEnter:connect(function()
			lookingatsectionbutton = true
			if lookingatsectionbutton or lookingatsectionbuttontext then
				sectionbuttonEnter:Play()
			end
		end)
		sectionbutton.text.MouseEnter:connect(function()
			lookingatsectionbuttontext = true
			if lookingatsectionbutton or lookingatsectionbuttontext then
				sectionbuttonEnter:Play()
			end
		end)

		sectionbutton.MouseLeave:connect(function()
			lookingatsectionbutton = false
			if not lookingatsectionbutton and not lookingatsectionbuttontext then
				sectionbuttonLeave:Play()
			end
		end)
		sectionbutton.text.MouseLeave:connect(function()
			lookingatsectionbuttontext = false
			if not lookingatsectionbutton and not lookingatsectionbuttontext then
				sectionbuttonLeave:Play()
			end
		end)

		local frameshowtween = tween(sectionframe, .45, {Position = UDim2.new(0, 0, .029, 0)})
		local selectedlineshow = tween(sectionbutton.selected, .45, {Size = UDim2.new(.853, 0, .083, 0)})

		section.framehidetween = tween(sectionframe, .45, {Position = UDim2.new(0, 0, 1, 0)})
		section.selectedlinehide = tween(sectionbutton.selected, .45, {Size = UDim2.new(0, 0, .083, 0)})

		sectionbutton.MouseButton1Click:connect(function()
			if selectedsection ~= section then
				for i, s in pairs(sections) do
					local exists, hidetween, selectedlinehide = pcall(function()return s['framehidetween'], s['selectedlinehide']end)
					if s and hidetween and selectedlinehide then
						hidetween:Play()
						selectedlinehide:Play() 
					end
				end
				sectionframe.Position = UDim2.new(0, 0, -1, 0)
				frameshowtween:Play()
				selectedlineshow:Play()
			end
			selectedsection = section
		end)


		if selectedsection then
			sectionbutton.selected.Size = UDim2.new(0, 0, .083, 0)
		else
			selectedsection = section
			for i, s in pairs(sections) do
				local exists, hidetween = pcall(function()return s['hidetween']end)
				if s and exists and hidetween then
					hidetween:Play()
				end
			end
			sectionframe.Position = UDim2.new(0, 0, -1, 0)
			frameshowtween:Play()
		end

		function object:TextButton(buttonName, clickcallback)
			local buttonName = buttonName or 'button'

			local button = buttontemplate:Clone()
			button.Name = buttonName
			button.text.Text = buttonName
			button.Parent = sectionframe
			button.Visible = true

			if clickcallback then
				button.MouseButton1Click:connect(clickcallback)
			end

			return button
		end
		function object:TextLabel(labelName)
			local labelName = labelName or 'button'

			local label = labeltemplate:Clone()

			label.Name = labelName
			label.Text = labelName
			label.Parent = sectionframe
			label.Visible = true

			return label
		end
		function object:TextBox(boxName, textchangedcallback)
			local boxName = boxName or 'button'

			local box = textboxtemplate:Clone()

			box.Name = boxName
			box.PlaceholderText = boxName
			box.Parent = sectionframe
			box.Visible = true

			if textchangedcallback then
				box:GetPropertyChangedSignal('Text'):connect(function()
					pcall(function()textchangedcallback(box.Text)end)
				end)
			end
			return box
		end

		table.insert(sections, section)

		return object
	end

	smoothdrag(mainframe)
	pcall(function()
		gui.Parent = game:GetService'CoreGui'
		syn.protect_gui(gui)
	end)

	return object
end

return library
