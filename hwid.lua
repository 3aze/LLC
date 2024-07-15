toclipboard(game:service("RbxAnalyticsService"):GetClientId())
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Font = Enum.Font.SourceSans
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextStrokeTransparency = 0
textLabel.Text = "The hardware ID has been copied, now go back to the ticket and paste it in there."
textLabel.Size = UDim2.new(0.8, 0, 0, 30)
textLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

textLabel.AutoLocalize = true
textLabel.TextScaled = true
textLabel.TextWrap = true
textLabel.TextXAlignment = Enum.TextXAlignment.Center
textLabel.TextYAlignment = Enum.TextYAlignment.Center
