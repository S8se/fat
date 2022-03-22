    local TS = game:GetService("TweenService")
    local Speed = 250
    function ToSnowwhite()
        Time = (Vector3.new(-4971.47559, 331.565765, -3720.02954) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-4971.47559, 331.565765, -3720.02954))})
        Tween:Play()
        Tween.Completed:Wait()
    end
    function ToWintersky()
        Time = (Vector3.new(-5420.16602, 1084.9657, -2666.82) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-5420.16602, 1084.9657, -2666.8208))})
        Tween:Play()
        Tween.Completed:Wait()
    end
    function toPureRedAndPrint()
        a = "%x";
        b = "%X";
        Time = (Vector3.new(-5414.41357, 309.865753, -2212.45776) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / Speed;
        Info = TweenInfo.new(Time, Enum.EasingStyle.Linear);
        Tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,Info,{CFrame = CFrame.new(Vector3.new(-5414.41357, 309.865753, -2212.45776))})
        Tween:Play();
        Tween.Completed:Connect(function()
            warn("Activate Color finished at", os.date(a), os.date(b));
        end);
    end;
    local l1 = {
        [1] = "activateColor",
        [2] = "Snow White"
    };
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(l1));
    ToSnowwhite();
    wait();
    local l2 = {
        [1] = "activateColor",
        [2] = "Winter Sky"
    };
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(l2));
    ToWintersky();
    wait()
    local l3 = {
        [1] = "activateColor",
        [2] = "Pure Red"
    };
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(l3));
    toPureRedAndPrint();
