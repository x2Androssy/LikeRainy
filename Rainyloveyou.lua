

-- วิธีบิงมอนให้เอาขื่อของม้อนแล้วก็Lvมาใส่แบบต้นตำหรับ อย่างเช่น

--"Rainy Boss [Lv. 500000000000]"

--ตรงบรรทัด 36 37

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rainy Love You ", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("FastAttack")
Section:NewToggle("FastAttack", "Click to use FastAttack", function(state)
local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
_G.Fastattack = state -- true\false
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Fastattack then
Fast.activeController.timeToNextAttack = 0
Fast.activeController.hitboxMagnitude = 50
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(686, 352))
CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
end
end)
end)
end)
Section:NewLabel("Bringmob")
Section:NewToggle("bringmob", "Click to use bringmob", function(state)
_G.bringmob = state
while _G.bringmob do wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Mythological Pirate [Lv. 1850]" then   --ม้อนที่ต้องการให้รวมกัน
    if y.Name == "Mythological Pirate [Lv. 1850]" then--ม้อนที่ต้องการให้รวมกันแบบอันบน
	
   v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
