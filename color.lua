local TS = game:GetService("TweenService")
local Speed = 250
nc = false
buso = false
spawn(function()
        while true do
               if buso then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                
                else
                    local args = {[1] = "Buso"}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end)
                   end
        wait(.1)
        end
    end)
spawn(function()
    while true do
    LocalPlayer = game.Players.LocalPlayer
    Char = LocalPlayer.Character
    if nc then
        for _, v in pairs(Char:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end
    game:GetService("RunService").Stepped:wait()
end
end)
function ToColor(hello)
    buso = true
    nc = true
   hallo = {
        'Snow White',
        'Winter Sky',
        'Pure Red'
    }
    if hello == "White" then
        local l1 = {
            [1] = "activateColor",
            [2] = hallo[1]
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(l1));
        Time = (Vector3.new(-4971.47559, 331.565765, -3720.02954) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-4971.47559, 331.565765, -3720.02954))})
        Tween:Play()
        Tween.Completed:Wait()
    elseif hello == "Pink" then
        local l1 = {
            [1] = "activateColor",
            [2] = hallo[2]
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(l1));
        Time = (Vector3.new(-5420.17, 1084.97, -2666.82) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-5420.17, 1084.97, -2666.82))})
        Tween:Play()
        Tween.Completed:Wait()
    elseif hello == "Red" then
        local l1 = {
            [1] = "activateColor",
            [2] = hallo[3]
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(l1));
        Time = (Vector3.new(-5414.41357, 309.865753, -2212.45776) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-5414.41357, 309.865753, -2212.45776))})
        Tween:Play()
        Tween.Completed:Wait()
    end
    nc = false
buso = false
end
ToColor("White")
wait()
ToColor("Pink")
wait(.1)
ToColor("Red")
