-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Venyx", 5013109572)
local Char = game.Players.LocalPlayer.CharacterAdded:Wait()
-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(255, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 0, 0)
}
local page = venyx:addPage("[+]", 5012544693)
local section1 = page:addSection("Hi")
function EquipWeapon()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("UMP") then
        Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("UMP"))
    end
end
spawn(function()
    while wait() do
        pcall(function()
        if HAHA then
            EquipWeapon()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            for k, v in next, game.Players:GetChildren() do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    v.Character:WaitForChild("Head")
                    v.Character:WaitForChild("Humanoid")
                    local args = {
                        [1] = Char.UMP,
                        [2] = {
                            ["p"] = Vector3.new(-395.02398681640625, 1446.6376953125, 620.1635131835938),
                            ["pid"] = 1,
                            ["part"] = v.Character.Head,
                            ["d"] = 5.268871307373047,
                            ["maxDist"] = 5.206152439117432,
                            ["h"] = v.Character.Humanoid,
                            ["m"] = Enum.Material.Plastic,
                            ["sid"] = 2,
                            ["t"] = 0.3719301468575088,
                            ["n"] = Vector3.new(-0.9820943474769592, 0.006791193038225174, -0.18826736509799957)
                        }
                    }
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
                end
            end
            warn("KILLED SOMEBODY HAHAHAHHAHAHAHH", os.date("%x"), os.date("%x"))
        elseif not HAHA then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
    end)
    end
end)
section1:addToggle("Auto Kill All Players", nil, function(vu)
    HAHA = vu
end)
local theme = venyx:addPage("[+]", 5012544693)
local colors = theme:addSection("Settings")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
colors:addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
venyx:toggle()
end)

colors:addButton("Destroy UI", function()
    if game.CoreGui:FindFirstChild("Venyx") then
        game.CoreGui.Venyx:Destroy()
    end
end)

-- load
venyx:SelectPage(venyx.pages[1], true)
