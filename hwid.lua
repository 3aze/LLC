local platform = game:service("UserInputService"):GetPlatform()
if platform == Enum.Platform.IOS or platform == Enum.Platform.Android then
game.StarterGui:SetCore("SendNotification",{Title = "xub's scripts",Text = "The hardware ID has been copied, now go back to the ticket and paste it in there.",Duration = math.huge})
toclipboard(game:service("RbxAnalyticsService"):GetClientId())
else
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/3aze/LTS/main/success.lua")()
lib:SendNotification("Success", "The hardware ID has been copied, now go back to the ticket and paste it in there.", 9e9)
toclipboard(game:service("RbxAnalyticsService"):GetClientId())
end
