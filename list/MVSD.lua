local a=loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/3aze/LTS@main/lib/turtle.lua"))()local b=a:Window("MVSD")b:Toggle("Enable Esp",false,function(a)getgenv().toggleESP=a end)b:Toggle("Enable Hitbox",false,function(a)getgenv().Enabled=a end)b:Box("Hitbox Size",function(a)getgenv().HeadSize=a end)getgenv().toggleESP=not getgenv().toggleESP;getgenv().Enabled=not getgenv().Enabled;game:service("RunService").RenderStepped:Connect(function()local a=game:service("Players").LocalPlayer;local b=a.Team;for c,d in ipairs(game:service("Players"):GetPlayers())do if d.Name~=a.Name and d.Team~=b then pcall(function()local a=d.Character and d.Character:FindFirstChild("HumanoidRootPart")if a then local b=d.Character:FindFirstChildOfClass("Humanoid")if b and b.Health>0 then if getgenv().Enabled then a.Size=Vector3.new(getgenv().HeadSize,getgenv().HeadSize,getgenv().HeadSize)a.Transparency=.7;a.BrickColor=BrickColor.new("Really blue")a.Material="Neon"a.CanCollide=false else a.Size=Vector3.new(2,2,1)a.Transparency=1;a.BrickColor=BrickColor.new("Medium stone grey")a.Material="Plastic"a.CanCollide=false end else a.Size=Vector3.new(1,1,1)a.Transparency=1;a.BrickColor=BrickColor.new("Medium stone grey")a.Material="Plastic"a.CanCollide=false end end end)end end end)while wait(.5)do if getgenv().toggleESP then for a,b in ipairs(workspace:GetDescendants())do if b:FindFirstChild("Humanoid")then local a=game.Players:GetPlayerFromCharacter(b)if a and a.Team~=game.Players.LocalPlayer.Team then if a.Character and(a.Character:FindFirstChild("Humanoid")and a.Character.Humanoid.Health>0)then if not b:FindFirstChild("ESP")then if b~=game.Players.LocalPlayer.Character then local a=Instance.new("BoxHandleAdornment",b)a.Adornee=b;a.ZIndex=0;a.Size=Vector3.new(2,2,2)a.Transparency=.5;a.Color3=Color3.fromRGB(0,255,0)a.AlwaysOnTop=true;a.Name="ESP"end end else if b:FindFirstChild("ESP")then b.ESP:Destroy()end end end end end else for a,b in ipairs(workspace:GetDescendants())do if b:FindFirstChild("ESP")then b.ESP:Destroy()end end end end