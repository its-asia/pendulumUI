local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local CoreGui = game:GetService('CoreGui')
function Dragify(Frame)
	local dragToggle = nil
	local dragSpeed = 0
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil
	local startPos = Frame.Position
	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		Frame.Position = Position
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end

--[[

	this is a call for help
	john (tescalus) has me in his basement
	he wont let me out until i finish the switches
	please send help

]]

return {
	CreateLib = function(GuiName)
		local Gui = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local Corner = Instance.new("UICorner")
		local SectionButtons = Instance.new("Frame")
		local Padding = Instance.new("UIPadding")
		local Template = Instance.new("Frame")
		local TemplateText = Instance.new("TextLabel")
		local Corner_2 = Instance.new("UICorner")
		local List = Instance.new("UIListLayout")
		local Corner_3 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local Sections = Instance.new("Frame")
		local Template_2 = Instance.new("Frame")
		local ScrollerParent = Instance.new("Frame")
		local Scroller = Instance.new("ScrollingFrame")
		local ButtonTemplate = Instance.new("Frame")
		local ButtonText = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local MoreImage = Instance.new("ImageLabel")
		local Corner_4 = Instance.new("UICorner")
		local List_2 = Instance.new("UIListLayout")
		local LabelTemplate = Instance.new("TextLabel")
		local SearchBarTemplate = Instance.new("TextBox")
		local Corner = Instance.new("UICorner")
		local SearchPadding = Instance.new("UIPadding")
		local SearchImage = Instance.new("ImageLabel")
		local Corner_5 = Instance.new("UICorner")
		local Corner_6 = Instance.new("UICorner")
		local Padding_2 = Instance.new("UIPadding")
		local Vinculum = Instance.new("Frame")
		local SwitchTemplate = Instance.new("Frame")
		local SwitchCorner = Instance.new("UICorner")
		local SwitchMoreImage = Instance.new("ImageLabel")
		local SwitchPadding = Instance.new("UIPadding")
		local Label = Instance.new("TextLabel")
		local Switch = Instance.new("Frame")
		local SwitchCorner_2 = Instance.new("UICorner")
		local SwitchPadding_2 = Instance.new("UIPadding")
		local Switch_2 = Instance.new("Frame")
		local SwitchCorner_3 = Instance.new("UICorner")
		local SwitchPadding_3 = Instance.new("UIPadding")

		Gui.Name = GuiName
		Gui.Parent = CoreGui
		Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Main.Name = "Main"
		Main.Parent = Gui
		Main.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
		Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Main.AnchorPoint = Vector2.new(0.5,0.5)
		Main.Size = UDim2.new(0, 438, 0, 250)
		
		Dragify(Main)

		Corner.Name = "Corner"
		Corner.Parent = Main

		SectionButtons.Name = "SectionButtons"
		SectionButtons.Parent = Main
		SectionButtons.BackgroundColor3 = Color3.fromRGB(26, 32, 58)
		SectionButtons.Position = UDim2.new(0, 0, 0.842999995, 0)
		SectionButtons.Size = UDim2.new(0, 438, 0, 39)

		Padding.Name = "Padding"
		Padding.Parent = SectionButtons
		Padding.PaddingBottom = UDim.new(0, 2)
		Padding.PaddingLeft = UDim.new(0, 5)
		Padding.PaddingRight = UDim.new(0, 5)
		Padding.PaddingTop = UDim.new(0, 2)

		Template.Name = "Template"
		Template.Parent = SectionButtons
		Template.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
		Template.Position = UDim2.new(0, 0, 0.281651974, 0)
		Template.Size = UDim2.new(0, 86, 0, 30)
		Template.Visible = false

		TemplateText.Name = "Label"
		TemplateText.Parent = Template
		TemplateText.Size = UDim2.new(1,0,1,0)
		TemplateText.Font = Enum.Font.Gotham
		TemplateText.TextColor3 = Color3.fromRGB(200, 200, 200)
		TemplateText.TextSize = 14.000
		TemplateText.BackgroundTransparency = 1.000

		Corner_2.Name = "Corner"
		Corner_2.Parent = Template

		List.Name = "List"
		List.Parent = SectionButtons
		List.FillDirection = Enum.FillDirection.Horizontal
		List.SortOrder = Enum.SortOrder.LayoutOrder
		List.VerticalAlignment = Enum.VerticalAlignment.Center
		List.Padding = UDim.new(0, 5)

		Corner_3.Name = "Corner"
		Corner_3.Parent = SectionButtons

		Title.Name = "Title"
		Title.Parent = Main
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0406067744, 0, 0.0354312733, 0)
		Title.Size = UDim2.new(0, 402, 0, 15)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = GuiName
		Title.TextColor3 = Color3.fromRGB(200, 200, 200)
		Title.TextSize = 16.000
		Title.TextXAlignment = Enum.TextXAlignment.Left
		Title.TextYAlignment = Enum.TextYAlignment.Top

		Sections.Name = "Sections"
		Sections.Parent = Main
		Sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Sections.BackgroundTransparency = 1.000
		Sections.Size = UDim2.new(1, 0, 1, 0)

		Template_2.Name = "Template"
		Template_2.Parent = Sections
		Template_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Template_2.BackgroundTransparency = 1.000
		Template_2.Size = UDim2.new(1, 0, 1, 0)
		Template_2.Visible = false

		ScrollerParent.Name = "ScrollerParent"
		ScrollerParent.Parent = Template_2
		ScrollerParent.BackgroundColor3 = Color3.fromRGB(26, 32, 58)
		ScrollerParent.Position = UDim2.new(0.0406067744, 0, 0.185079828, 0)
		ScrollerParent.Size = UDim2.new(0, 402, 0, 152)

		Scroller.Name = "Scroller"
		Scroller.Parent = ScrollerParent
		Scroller.Active = true
		Scroller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Scroller.BackgroundTransparency = 1.000
		Scroller.BorderSizePixel = 0
		Scroller.Size = UDim2.new(1, 0, 1, 0)
		Scroller.CanvasSize = UDim2.new(0, 0, 0, 50)
		Scroller.ScrollBarThickness = 3

		ButtonTemplate.Name = "ButtonTemplate"
		ButtonTemplate.Parent = Scroller
		ButtonTemplate.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
		ButtonTemplate.BackgroundTransparency = 0.500
		ButtonTemplate.LayoutOrder = 1
		ButtonTemplate.Position = UDim2.new(0, 0, 0.281651974, 0)
		ButtonTemplate.Size = UDim2.new(1, 0, 0, 30)
		ButtonTemplate.Visible = false

		ButtonText.Name = "ButtonText"
		ButtonText.Parent = ButtonTemplate
		ButtonText.BackgroundTransparency = 1.000
		ButtonText.Size = UDim2.new(1, 0, 1, 0)
		ButtonText.Font = Enum.Font.Gotham
		ButtonText.TextColor3 = Color3.fromRGB(200, 200, 200)
		ButtonText.TextSize = 14.000

		UIPadding.Parent = ButtonTemplate
		UIPadding.PaddingBottom = UDim.new(0, 5)
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingRight = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)

		MoreImage.Name = "MoreImage"
		MoreImage.Parent = ButtonTemplate
		MoreImage.AnchorPoint = Vector2.new(0, 0.5)
		MoreImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MoreImage.BackgroundTransparency = 1.000
		MoreImage.Position = UDim2.new(0, 0, 0.5, 0)
		MoreImage.Size = UDim2.new(0, 25, 0, 25)
		MoreImage.Image = "rbxassetid://7072719490"
		MoreImage.ImageColor3 = Color3.fromRGB(200, 200, 200)
		MoreImage.ImageTransparency = 0.750

		Corner_4.Name = "Corner"
		Corner_4.Parent = ButtonTemplate

		List_2.Name = "List"
		List_2.Parent = Scroller
		List_2.SortOrder = Enum.SortOrder.LayoutOrder
		List_2.Padding = UDim.new(0, 5)

		LabelTemplate.Name = "LabelTemplate"
		LabelTemplate.Parent = Scroller
		LabelTemplate.BackgroundColor3 = Color3.fromRGB(102, 61, 255)
		LabelTemplate.Size = UDim2.new(1, 0, 0, 30)
		LabelTemplate.Font = Enum.Font.Gotham
		LabelTemplate.TextColor3 = Color3.fromRGB(200, 200, 200)
		LabelTemplate.TextSize = 14.000
		LabelTemplate.Visible = false

		SearchBarTemplate.Name = "SearchBarTemplate"
		SearchBarTemplate.Parent = Scroller
		SearchBarTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SearchBarTemplate.BackgroundTransparency = 1.000
		SearchBarTemplate.Size = UDim2.new(1, 0, 0, 30)
		SearchBarTemplate.Font = Enum.Font.Gotham
		SearchBarTemplate.PlaceholderText = "Search"
		SearchBarTemplate.Text = ""
		SearchBarTemplate.TextColor3 = Color3.fromRGB(200, 200, 200)
		SearchBarTemplate.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
		SearchBarTemplate.Visible = false
		SearchBarTemplate.TextSize = 14.000

		SearchPadding.Name = "SearchPadding"
		SearchPadding.Parent = SearchBarTemplate
		SearchPadding.PaddingBottom = UDim.new(0, 5)
		SearchPadding.PaddingLeft = UDim.new(0, 5)
		SearchPadding.PaddingRight = UDim.new(0, 5)
		SearchPadding.PaddingTop = UDim.new(0, 5)

		SearchImage.Name = "SearchImage"
		SearchImage.Parent = SearchBarTemplate
		SearchImage.AnchorPoint = Vector2.new(0, 0.5)
		SearchImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SearchImage.BackgroundTransparency = 1.000
		SearchImage.Position = UDim2.new(0, 0, 0.5, 0)
		SearchImage.Size = UDim2.new(0, 25, 0, 25)
		SearchImage.Image = "rbxassetid://7072721559"
		SearchImage.ImageColor3 = Color3.fromRGB(200, 200, 200)

		Corner_5.Name = "Corner"
		Corner_5.Parent = LabelTemplate

		Corner_6.Name = "Corner"
		Corner_6.Parent = ScrollerParent

		Padding_2.Name = "Padding"
		Padding_2.Parent = ScrollerParent
		Padding_2.PaddingBottom = UDim.new(0, 5)
		Padding_2.PaddingLeft = UDim.new(0, 5)
		Padding_2.PaddingRight = UDim.new(0, 5)
		Padding_2.PaddingTop = UDim.new(0, 5)

		Vinculum.Name = "Vinculum"
		Vinculum.Parent = Main
		Vinculum.BackgroundColor3 = Color3.fromRGB(26, 32, 58)
		Vinculum.BorderSizePixel = 0
		Vinculum.Position = UDim2.new(0, 0, 0.128245845, 0)
		Vinculum.Size = UDim2.new(0, 438, 0, 1)
		
		SwitchTemplate.Name = "SwitchTemplate"
		SwitchTemplate.Parent = Scroller
		SwitchTemplate.Active = true
		SwitchTemplate.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
		SwitchTemplate.BackgroundTransparency = 0.500
		SwitchTemplate.LayoutOrder = 1
		SwitchTemplate.Position = UDim2.new(0, 0, 0.281651974, 0)
		SwitchTemplate.Selectable = true
		SwitchTemplate.Visible = false
		SwitchTemplate.Size = UDim2.new(1, 0, 0, 30)

		SwitchCorner.Name = "SwitchCorner"
		SwitchCorner.Parent = SwitchTemplate

		SwitchMoreImage.Name = "MoreImage"
		SwitchMoreImage.Parent = SwitchTemplate
		SwitchMoreImage.AnchorPoint = Vector2.new(0, 0.5)
		SwitchMoreImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SwitchMoreImage.BackgroundTransparency = 1.000
		SwitchMoreImage.Position = UDim2.new(0, 0, 0.5, 0)
		SwitchMoreImage.Size = UDim2.new(0, 25, 0, 25)
		SwitchMoreImage.Image = "rbxassetid://7072719490"
		SwitchMoreImage.ImageColor3 = Color3.fromRGB(200, 200, 200)
		SwitchMoreImage.ImageTransparency = 0.750
		SwitchMoreImage.Visible = false

		SwitchPadding.Name = "SwitchPadding"
		SwitchPadding.Parent = SwitchTemplate
		SwitchPadding.PaddingBottom = UDim.new(0, 5)
		SwitchPadding.PaddingLeft = UDim.new(0, 5)
		SwitchPadding.PaddingRight = UDim.new(0, 5)
		SwitchPadding.PaddingTop = UDim.new(0, 5)

		Label.Name = "Label"
		Label.Parent = SwitchTemplate
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.Size = UDim2.new(1, 0, 1, 0)
		Label.Font = Enum.Font.Gotham
		Label.Text = "Switch"
		Label.TextColor3 = Color3.fromRGB(200, 200, 200)
		Label.TextSize = 14.000

		Switch.Name = "Switch"
		Switch.Parent = SwitchTemplate
		Switch.BackgroundColor3 = Color3.fromRGB(39, 48, 80)
		Switch.Position = UDim2.new(0.828846872, 0, 0, 0)
		Switch.Size = UDim2.new(-0.0906269848, 100, 1, 0)

		SwitchCorner_2.CornerRadius = UDim.new(0, 1000)
		SwitchCorner_2.Name = "SwitchCorner"
		SwitchCorner_2.Parent = Switch

		SwitchPadding_2.Name = "SwitchPadding"
		SwitchPadding_2.Parent = Switch
		SwitchPadding_2.PaddingBottom = UDim.new(0, 5)
		SwitchPadding_2.PaddingLeft = UDim.new(0, 5)
		SwitchPadding_2.PaddingRight = UDim.new(0, 5)
		SwitchPadding_2.PaddingTop = UDim.new(0, 5)

		Switch_2.Name = "Switch"
		Switch_2.Parent = Switch
		Switch_2.BackgroundColor3 = Color3.fromRGB(32, 39, 65)
		Switch_2.Size = UDim2.new(0, 10, 0, 10)

		SwitchCorner_3.CornerRadius = UDim.new(0, 1000)
		SwitchCorner_3.Name = "SwitchCorner"
		SwitchCorner_3.Parent = Switch_2

		SwitchPadding_3.Name = "SwitchPadding"
		SwitchPadding_3.Parent = Switch_2
		SwitchPadding_3.PaddingBottom = UDim.new(0, 5)
		SwitchPadding_3.PaddingLeft = UDim.new(0, 5)
		SwitchPadding_3.PaddingRight = UDim.new(0, 5)
		SwitchPadding_3.PaddingTop = UDim.new(0, 5)

		local function ButtonPressed(B,F)
			if B:IsA("TextButton") then
				B.MouseButton1Down:Connect(F)
				B.TouchTap:Connect(F)

				return B
			else
				local Button = Instance.new("TextButton")
				Button.Name,Button.Text = "Trigger",""
				Button.Parent = B

				Button.BackgroundTransparency = 1
				Button.Size = UDim2.new(1,0,1,0)

				return ButtonPressed(Button,F)
			end
		end
		
		local function TweenObject(Object,Info,Goals)
			local Tween = TweenService:Create(Object,Info,Goals)
			Tween:Play()

			return Tween
		end

		local function TweenColor(GuiObject,Color,Setting)
			local Tween
			coroutine.resume(coroutine.create(function()
				local TInfo = TweenInfo.new(0.2)
				local Goals = {}
				Goals[Setting or "BackgroundColor3"] = Color

				Tween = TweenService:Create(GuiObject,TInfo,Goals)
				Tween:Play()
			end))

			return Tween
		end

		local function GetTextSize(Label)
			local TextService = game:GetService("TextService")
			return TextService:GetTextSize(
				Label.Text,
				Label.TextSize,
				Label.Font,
				Label.AbsoluteSize
			)
		end

		local Lib = {}
		local function GetTemplate(Parent,Type)
			Type = Type or ""

			local Template = Parent:FindFirstChild(Type.."Template"):Clone()
			Template.Visible = true
			Template.Parent = Parent:FindFirstChild(Type.."Template").Parent

			return Template
		end

		local function ResetSectionButtons()
			for Index, Button in pairs(SectionButtons:GetChildren()) do
				if Button:IsA("Frame") then
					Button.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
				end
			end
		end

		function Lib:NewTab(TabName,PreVisible)
			local SectionButton = GetTemplate(SectionButtons)
			SectionButton.Label.Text = tostring(TabName) or "nil"
			SectionButton.Name = TabName

			local TextSize = GetTextSize(SectionButton.Label)
			local Size = UDim2.fromOffset(TextSize.X * 1.85,30)

			local Lerping = false
			SectionButton.Size = Size
			SectionButton.MouseEnter:Connect(function()
				repeat wait() until Lerping == false
				Lerping = true

				ResetSectionButtons()

				local Tween = TweenColor(SectionButton,Color3.fromRGB(102, 61, 255))
				Tween.Completed:Wait()

				Lerping = false
			end)

			SectionButton.MouseLeave:Connect(function()
				TweenColor(SectionButton,Color3.fromRGB(38, 45, 71))
			end)

			local Section = GetTemplate(Sections)
			if not PreVisible or PreVisible ~= nil and PreVisible == false then
				Section.Visible = false
			elseif PreVisible ~= nil and PreVisible == true then
				Section.Visible = true
			end

			Section.Name = TabName	

			ButtonPressed(SectionButton,function()
				for Index, Frame in pairs(Sections:GetChildren()) do
					if Frame == Section then
						Frame.Visible = true
					else
						Frame.Visible = false
					end
				end
			end)

			local Tab = {}
			function Tab:NewButton(Name,Description,Function)
				local Lerping2 = false
				local Lerping3 = false

				local Button = GetTemplate(Section.ScrollerParent.Scroller,"Button")
				Button.Name = Name
				Button.ButtonText.Text = Name
				Button.MouseEnter:Connect(ResetSectionButtons)

				local Scroller = Section.ScrollerParent.Scroller
				Scroller.CanvasSize = UDim2.fromOffset(Scroller.CanvasSize.X.Offset,Scroller.CanvasSize.Y.Offset+35)

				local MoreImage = Button.MoreImage
				local MoreImageButton = ButtonPressed(MoreImage,function()
					if Button.ButtonText.Text == Name then
						local TInfo = TweenInfo.new(0.2)
						local Goals = {
							Rotation = 90
						}

						local Tween = TweenService:Create(MoreImage,TInfo,Goals)
						Tween:Play()

						TweenColor(Button,Color3.fromRGB(79, 94, 147))
					else
						local TInfo = TweenInfo.new(0.2)
						local Goals = {
							Rotation = 0
						}

						local Tween = TweenService:Create(MoreImage,TInfo,Goals)
						Tween:Play()

						TweenColor(Button,Color3.fromRGB(38, 45, 71))
					end

					Button.ButtonText.Text = (Button.ButtonText.Text == Name) and Description or Name
				end)

				MoreImage.ZIndex = 2
				MoreImageButton.ZIndex = 2

				local Button2 = ButtonPressed(Button,function()
					local ClickSound = Instance.new("Sound")
					ClickSound.SoundId = "rbxassetid://5852311745"

					SoundService:PlayLocalSound(ClickSound)
					ClickSound:Destroy()

					repeat wait() until Lerping2 == false
					local ButtonColor = Button.BackgroundColor3
					Lerping2 = true

					local Tween1 = TweenColor(Button,Color3.fromRGB(28, 35, 225))
					Tween1.Completed:Wait()

					local Tween2 = TweenColor(Button,ButtonColor)
					Tween2.Completed:Wait()

					Lerping2 = false

					local Success, Error = pcall(function()
						Function()
					end)

					if not Success then
						pcall(function()
							error(Error)
						end)
					end
				end)

				Button2.ZIndex = 1
			end

			function Tab:NewLabel(Text)
				local Label = GetTemplate(Section.ScrollerParent.Scroller,"Label")
				Label.Name = Text
				Label.Text = Text

				local Scroller = Section.ScrollerParent.Scroller
				Scroller.CanvasSize = UDim2.fromOffset(Scroller.CanvasSize.X.Offset,Scroller.CanvasSize.Y.Offset+35)
			end

			function Tab:NewSearchBar()
				local SearchBar = GetTemplate(Section.ScrollerParent.Scroller,"SearchBar")
				SearchBar.Changed:Connect(function()
					for Index, Item in pairs(Section.ScrollerParent.Scroller:GetChildren()) do
						if Item:IsA("GuiObject") and not Item.Name:match("Template") then
							local Text = Item.Name:lower()
							if Text:match(SearchBar.Text:lower()) or SearchBar.Text == "" or Item == SearchBar then
								Item.Visible = true
							else
								Item.Visible = false
							end
						end
					end
				end)
			end
			
			function Tab:NewSwitch(Text, Description, Function)
				local SwitchButton = GetTemplate(Section.ScrollerParent.Scroller,"Switch")
				
				local Toggled = false
				local Tweening = false
				
				ButtonPressed(SwitchButton.Switch, function()
					if Tweening then return end
					
					Toggled = not Toggled
					Tweening = true
					
					local Goals = {}
					if Toggled == true then
						Goals.Position = UDim2.new(1, -10, 0, 0)
					elseif Toggled == false then
						Goals.Position = UDim2.fromScale(0, 0)
					end
					
					local Tween = TweenObject(SwitchButton.Switch.Switch, TweenInfo.new(0.15), Goals)
					Tween.Completed:Wait()

					coroutine.resume(coroutine.create(function()
						Function(Toggled)
					end))
					
					Tweening = false
				end)
				
				SwitchButton.Label.Text = Text
				SwitchButton.Name = Text
			end

			return Tab
		end

		function Lib:Hide()
			Gui.Enabled = false
		end

		function Lib:Show()
			Gui.Enabled = true
		end

		return Lib
	end
}
