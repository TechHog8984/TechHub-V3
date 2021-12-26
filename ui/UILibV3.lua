local HideObject = loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/Hide-Instance/main/script/HideObject.lua'))()

local function creategui()
	--GuiToLua V3

	--objects
	local V3_library = HideObject.Create{ClassName = 'ScreenGui', Parent = game:GetService'CoreGui', DisplayOrder = 100, IgnoreGuiInset = true, Name = 'V3 library', ResetOnSpawn = false}

	local mainframe = HideObject.Create{ClassName = 'Frame', BackgroundColor3 = Color3.fromRGB(39, 39, 39), Name = 'mainframe', Parent = V3_library, Position = UDim2.new(0, 276, 0, 202), Size = UDim2.new(0, 505, 0, 321)}
	local sectionscontainer = HideObject.Create{ClassName = 'ScrollingFrame', Active = true, BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'sectionscontainer', Parent = mainframe, Position = UDim2.new(0.27178418636322, 0, 0.064171142876148, 0), Size = UDim2.new(0.72821575403214, 0, 0.93582886457443, 0), CanvasSize = UDim2.new(0, 100, 0, 100), ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0), ScrollBarImageTransparency = 1, ScrollBarThickness = 0, ScrollingEnabled = false}
	local sectiontemplate = HideObject.Create{ClassName = 'Frame', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'sectiontemplate', Parent = sectionscontainer, Position = UDim2.new(0, 0, 0.029411720111966, 0), Size = UDim2.new(1, 0, 0.97058820724487, 0), Visible = false}
	local dropdowntemplate = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'dropdowntemplate', Parent = sectiontemplate, Position = UDim2.new(0.028000000864267, 0, 0.0080000003799796, 0), Size = UDim2.new(0.94300001859665, 0, 0.063000001013279, 0), Visible = false, Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextSize = 14}
	local text = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(212, 124, 0), BorderSizePixel = 0, Name = 'text', Parent = dropdowntemplate, Size = UDim2.new(0.99999982118607, 0, 1, 0), Font = Enum.Font.Ubuntu, Text = 'dropdown', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 17}
	local dropdowncorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'dropdowncorner', Parent = text}
	local arrow = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'arrow', Parent = dropdowntemplate, Position = UDim2.new(0.93692177534103, 0, 0.10888122022152, 0), Rotation = 270, Size = UDim2.new(0, 21, 0, 14), Font = Enum.Font.Ubuntu, Text = '>', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 23}
	local container = HideObject.Create{ClassName = 'Frame', BackgroundColor3 = Color3.fromRGB(35, 35, 35), BorderSizePixel = 0, Name = 'container', Parent = dropdowntemplate, Position = UDim2.new(-8.8000852827008e-08, 0, 1.1976933479309, 0), Size = UDim2.new(0, 346, 0, 60), Visible = false}
	local dropdowncontainercorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 6), Name = 'dropdowncontainercorner', Parent = container}
	local UIListLayout = HideObject.Create{ClassName = 'UIListLayout', Padding = UDim.new(0.050000000745058, 0), Parent = container, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder}
	local dropdownbuttontemplate = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'dropdownbuttontemplate', Parent = container, Position = UDim2.new(-0.0028900851029903, 0, 0.10000025480986, 0), Size = UDim2.new(0.99974721670151, 0, 0.32966667413712, 0), Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextScaled = true, TextSize = 14, TextWrapped = true}
	local text__2 = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(212, 124, 0), BorderSizePixel = 0, Name = 'text', Parent = dropdownbuttontemplate, Position = UDim2.new(0, 0, 3.8571256482101e-06, 0), Size = UDim2.new(1, 0, 0.99024909734726, 0), Font = Enum.Font.Ubuntu, Text = 'textbutton', TextColor3 = Color3.fromRGB(255, 255, 255), TextScaled = true, TextSize = 17, TextWrapped = true}
	local buttoncorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'buttoncorner', Parent = text__2}
	local textboxtemplate = HideObject.Create{ClassName = 'TextBox', BackgroundColor3 = Color3.fromRGB(212, 124, 0), BorderSizePixel = 0, Name = 'textboxtemplate', Parent = sectiontemplate, Position = UDim2.new(0.028000000864267, 0, 0.0080000003799796, 0), Size = UDim2.new(0.94300001859665, 0, 0.063000001013279, 0), Visible = false, Font = Enum.Font.Ubuntu, PlaceholderColor3 = Color3.fromRGB(202, 202, 202), PlaceholderText = 'textbox', Text = '', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 17}
	local textboxcorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'textboxcorner', Parent = textboxtemplate}
	local labeltemplate = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(212, 124, 0), BorderSizePixel = 0, Name = 'labeltemplate', Parent = sectiontemplate, Position = UDim2.new(0.028490029275417, 0, 0.0080213900655508, 0), Size = UDim2.new(0.943019926548, 0, 0.063360877335072, 0), Visible = false, Font = Enum.Font.Ubuntu, Text = 'textlabel', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 17}
	local labelcorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'labelcorner', Parent = labeltemplate}
	local buttontemplate = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'buttontemplate', Parent = sectiontemplate, Position = UDim2.new(0.028000000864267, 0, 0.0080000003799796, 0), Size = UDim2.new(0.94300001859665, 0, 0.063000001013279, 0), Visible = false, Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextSize = 14}
	local text__3 = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(212, 124, 0), BorderSizePixel = 0, Name = 'text', Parent = buttontemplate, Size = UDim2.new(0.99999982118607, 0, 1, 0), Font = Enum.Font.Ubuntu, Text = 'textbutton', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 17}
	local buttoncorner__2 = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'buttoncorner', Parent = text__3}
	local sidebar = HideObject.Create{ClassName = 'Frame', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'sidebar', Parent = mainframe, Position = UDim2.new(0, 0, 0.17112299799919, 0), Size = UDim2.new(0.26763486862183, 0, 0.82866042852402, 0)}
	local sectionbuttontemplate = HideObject.Create{ClassName = 'TextButton', AutoButtonColor = false, BackgroundColor3 = Color3.fromRGB(212, 124, 0), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'sectionbuttontemplate', Parent = sidebar, Position = UDim2.new(-0.080333203077316, 0, -0.0029154131188989, 0), Size = UDim2.new(1, 0, 0.10526315867901, 0), Visible = false, Font = Enum.Font.Nunito, TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 21, TextTransparency = 1, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left}
	local text__4 = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'text', Parent = sectionbuttontemplate, Position = UDim2.new(0.08333333581686, 0, 0, 0), Size = UDim2.new(0.85271316766739, 0, 1, 0), Font = Enum.Font.Ubuntu, Text = 'Template', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left}
	local selected = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderSizePixel = 0, Name = 'selected', Parent = sectionbuttontemplate, Position = UDim2.new(0.082999996840954, 0, 0.89999997615814, 0), Size = UDim2.new(0.85300004482269, 0, 0.082999996840954, 0), Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextSize = 14}
	local UIListLayout__2 = HideObject.Create{ClassName = 'UIListLayout', Parent = sidebar, SortOrder = Enum.SortOrder.LayoutOrder}
	local sideline = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderSizePixel = 0, Name = 'sideline', Parent = mainframe, Position = UDim2.new(0, 0, 0.16310161352158, 0), Size = UDim2.new(0.27178424596786, 0, 0.0062305293977261, 0), Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextSize = 14}
	local sideline__2 = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderSizePixel = 0, Name = 'sideline', Parent = mainframe, Position = UDim2.new(0.27128714323044, 0, 0.06341315060854, 0), Size = UDim2.new(0.72871285676956, 0, 0.0062305293977261, 0), Font = Enum.Font.SourceSans, Text = '', TextColor3 = Color3.fromRGB(0, 0, 0), TextSize = 14}
	local subtitle = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'subtitle', Parent = mainframe, Position = UDim2.new(0.022302905097604, 0, 0.064171120524406, 0), Size = UDim2.new(0.24481327831745, 0, 0.043613705784082, 0), Font = Enum.Font.Ubuntu, Text = 'subtitle', TextColor3 = Color3.fromRGB(188, 188, 188), TextSize = 12, TextXAlignment = Enum.TextXAlignment.Left}
	local title = HideObject.Create{ClassName = 'TextLabel', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'title', Parent = mainframe, Position = UDim2.new(0.022302905097604, 0, 0, 0), Size = UDim2.new(0.24481327831745, 0, 0.093457944691181, 0), Font = Enum.Font.Ubuntu, Text = 'title', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 21, TextXAlignment = Enum.TextXAlignment.Left}
	local framecorner = HideObject.Create{ClassName = 'UICorner', CornerRadius = UDim.new(0, 4), Name = 'framecorner', Parent = mainframe}
	local close = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'close', Parent = mainframe, Position = UDim2.new(0.96563249826431, 0, 0, 0), Size = UDim2.new(0, 17, 0, 17), Font = Enum.Font.Code, Text = 'X', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 21}
	local minimize = HideObject.Create{ClassName = 'TextButton', BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1, BorderSizePixel = 0, Name = 'minimize', Parent = mainframe, Position = UDim2.new(0.91810774803162, 0, 0, 0), Size = UDim2.new(0, 17, 0, 17), Font = Enum.Font.Code, Text = '-', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 21}

	return V3_library, mainframe, sectionscontainer, sidebar, title, subtitle, sectionbuttontemplate, sectiontemplate, labeltemplate, buttontemplate, textboxtemplate, dropdowntemplate, minimize, close
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
local events = loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/TechHub-V3/main/script/misc/events.lua'))()

function library:CreateGui(guiname, titletext, subtitletext)
	local object = {}
	local sections = {}

	local selectedsection = nil

	local guiname = guiname or 'GUI'
	local titletext = titletext or guiname
	local subtitletext = subtitletext or 'subtitle'

	local gui, mainframe, sectionscontainer, sidebar, title, subtitle, sectionbuttontemplate, sectiontemplate, labeltemplate, buttontemplate, textboxtemplate, dropdowntemplate, minimize, close = creategui()

	gui.Name = guiname
	title.Text = titletext
	subtitle.Text = subtitletext
	
	local nilfolder = Instance.new('Folder', gui)
	nilfolder.Name = ''

	sectiontemplate.Parent = nilfolder
	sectionbuttontemplate.Parent = nilfolder
	labeltemplate.Parent = nilfolder
	buttontemplate.Parent = nilfolder
	textboxtemplate.Parent = nilfolder
	dropdowntemplate.Parent = nilfolder

	local closeEvent = events:CreateEvent('close')

	function object:GetCloseEvent()
		return closeEvent
	end
	function object:Destroy()
		gui:Destroy()
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
		local objects = {}

		local sectionName = sectionName or 'section'

		local sectionframe = sectiontemplate:Clone()
		local sectionbutton = sectionbuttontemplate:Clone()

		sectionframe.Name = sectionName
		sectionframe.Visible = true
		sectionframe.Position = UDim2.new(0, 0, -1, 0)
		sectionframe.Parent = sectionscontainer

		sectionbutton.text.Text = sectionName
		sectionbutton.Name = sectionName
		sectionbutton.Visible = true
		sectionbutton.Parent = sidebar

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
			button.Position = UDim2.new(.028, 0, (0.087 * #objects) + 0.008)

			if clickcallback then
				button.MouseButton1Click:connect(clickcallback)
			end

			table.insert(objects, button)

			return button
		end
		function object:TextLabel(labelName)
			local labelName = labelName or 'button'

			local label = labeltemplate:Clone()

			label.Name = labelName
			label.Text = labelName
			label.Parent = sectionframe
			label.Visible = true
			label.Position = UDim2.new(.028, 0, (0.087 * #objects) + 0.008)

			table.insert(objects, label)

			return label
		end
		function object:TextBox(boxName, textchangedcallback)
			local boxName = boxName or 'button'

			local box = textboxtemplate:Clone()

			box.Name = boxName
			box.PlaceholderText = boxName
			box.Parent = sectionframe
			box.Visible = true
			box.Position = UDim2.new(.028, 0, (0.087 * #objects) + 0.008)

			if textchangedcallback then
				box:GetPropertyChangedSignal('Text'):connect(function()
					pcall(function()textchangedcallback(box.Text)end)
				end)
			end

			table.insert(objects, box)

			return box
		end

		table.insert(sections, section)

		return object
	end

	smoothdrag(mainframe)
	return object
end

return library
