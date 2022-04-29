--> Made with ❤️ and LUA by kkeyy
local NotificationLibrary  = {}

function NotificationLibrary:Notification(title, text, time)
	local NotificationUI = Instance.new("ScreenGui")
	local Info = Instance.new("Frame")
	local Box = Instance.new("Frame")
	local Background = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Body = Instance.new("TextLabel")
	local IconFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local TitleBar = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner_3 = Instance.new("UICorner")
	local LowerCover = Instance.new("Frame")
	local Glow = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIGradient_2 = Instance.new("UIGradient")
	local Button = Instance.new("ImageButton")


	NotificationUI.Name = "NotificationUI"
	NotificationUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	Info.Name = "Info"
	Info.Parent = NotificationUI
	Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Info.BackgroundTransparency = 1.000
	Info.Position = UDim2.new(1, 0, 1, -100)
	Info.Size = UDim2.new(0, 311, 0, 100)

	Box.Name = "Box"
	Box.Parent = Info
	Box.AnchorPoint = Vector2.new(0, 0.5)
	Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Box.BackgroundTransparency = 1.000
	Box.Position = UDim2.new(0, 0, 0.5, -5)
	Box.Size = UDim2.new(1, 0, 1, 0)

	Background.Name = "Background"
	Background.Parent = Box
	Background.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Background.BorderSizePixel = 2
	Background.ClipsDescendants = true
	Background.Size = UDim2.new(1, 0, 1, 0)
	Background.ZIndex = 2

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Background

	Title.Name = "Title"
	Title.Parent = Box
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0171665791, 0, 0, 0)
	Title.Size = UDim2.new(0, 305, 0, 33)
	Title.ZIndex = 5
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 22.000

	Body.Name = "Body"
	Body.Parent = Box
	Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Body.BackgroundTransparency = 1.000
	Body.Position = UDim2.new(0.289135128, 0, 0.445499867, 0)
	Body.Size = UDim2.new(0, 206, 0, 46)
	Body.ZIndex = 3
	Body.Font = Enum.Font.Code
	Body.Text = text
	Body.TextColor3 = Color3.fromRGB(255, 255, 255)
	Body.TextSize = 14.000
	Body.TextWrapped = true
	Body.TextXAlignment = Enum.TextXAlignment.Left
	Body.TextYAlignment = Enum.TextYAlignment.Top

	IconFrame.Name = "IconFrame"
	IconFrame.Parent = Box 
	IconFrame.BackgroundColor3 = Color3.fromRGB(61, 73, 75)
	IconFrame.BackgroundTransparency = 1.000
	IconFrame.BorderSizePixel = 0
	IconFrame.ClipsDescendants = true
	IconFrame.Position = UDim2.new(0, 0, 0.330000013, 0)
	IconFrame.Size = UDim2.new(-0.0299245659, 100, 0.670000017, -1)
	IconFrame.ZIndex = 8

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = IconFrame

	ImageLabel.Parent = IconFrame
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel.Visible = false
	ImageLabel.ZIndex = 5
	ImageLabel.Image = "http://www.roblox.com/asset/?id=7358433318"

	TextLabel.Parent = IconFrame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0.699999988, 0, 0.649999976, 0)
	TextLabel.ZIndex = 5
	TextLabel.Font = Enum.Font.Arial
	TextLabel.Text = "!"
	TextLabel.TextColor3 = Color3.fromRGB(249, 255, 222)
	TextLabel.TextSize = 50.000

	TitleBar.Name = "TitleBar"
	TitleBar.Parent = Box
	TitleBar.BackgroundColor3 = Color3.fromRGB(75, 97, 118)
	TitleBar.BorderSizePixel = 0
	TitleBar.ClipsDescendants = true
	TitleBar.Position = UDim2.new(0, 0.5, 0, 0)
	TitleBar.Size = UDim2.new(1, -1, 0, 33)
	TitleBar.ZIndex = 3

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(226, 226, 226)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Rotation = -90
	UIGradient.Parent = TitleBar

	UICorner_3.CornerRadius = UDim.new(0, 6)
	UICorner_3.Parent = TitleBar

	LowerCover.Name = "LowerCover"
	LowerCover.Parent = TitleBar
	LowerCover.BackgroundColor3 = Color3.fromRGB(75, 97, 118)
	LowerCover.BorderSizePixel = 0
	LowerCover.Position = UDim2.new(-0.288977891, 0, 0.606060624, 0)
	LowerCover.Size = UDim2.new(1.29605186, 0, 0, 14)
	LowerCover.ZIndex = 2

	Glow.Name = "Glow"
	Glow.Parent = Box
	Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow.BorderSizePixel = 0
	Glow.Size = UDim2.new(1, 0, 1, -1)
	Glow.ZIndex = 5

	UICorner_4.CornerRadius = UDim.new(0, 6)
	UICorner_4.Parent = Glow

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient_2.Rotation = -90
	UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.80), NumberSequenceKeypoint.new(0.96, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_2.Parent = Glow

	Button.Name = "Button"
	Button.Parent = Box
	Button.Active = false
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.Size = UDim2.new(0, 310, 0, 100)
	Button.ZIndex = 6
	Button.AutoButtonColor = false
	Button.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	Button.ImageTransparency = 1.000

    local Sound = Instance.new("Sound", workspace)
    Sound.SoundId = "rbxassetid://2533608894"
    Sound.Volume = 1
    Sound.RollOffMaxDistance = 10000
    Sound.RollOffMinDistance = 10
    Sound:Play()
	game:GetService("TweenService"):Create(Info, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(1, -311, 1, -100)}):Play()
	task.wait(time)
	game:GetService("TweenService"):Create(Info, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(1, 0, 1, -100)}):Play()
	Sound:Destroy()
end
return NotificationLibrary
