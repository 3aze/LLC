local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
setclipboard(HWID)
game.StarterGui:SetCore("SendNotification",{
Title = "xub's scripts",
Text = "The hardware ID has been copied, now go back to the ticket and paste it in there."
})
