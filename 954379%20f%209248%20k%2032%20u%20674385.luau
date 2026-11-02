require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("U Executed The Abyss Protocol v0.1",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Idea: viet09544 and zombir_man",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("The mode may be buggy",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("p°/•£€~♤•>~£`□□^_",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("£••££~*•£•££><^^♤&&",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Special thanks for Zaydtruck🇯🇴🍉")
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Have fun :0")

local shut = game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.IntroText
local intro = shut:Clone()
intro.Parent = game.Players.LocalPlayer.PlayerGui.MainUI
intro.Name = "The Abyss Protocol Intro"
intro.Visible = true
intro.Text = "The Abyss Protocol"
intro.TextTransparency = 0
local underline = UDim2.new(1.1, 0, 0.015, 6)
game.TweenService:Create(intro.Underline, TweenInfo.new(3), {Size = underline}):Play()
wait(7)
game.TweenService:Create(intro.Underline, TweenInfo.new(1.3), {Size = UDim2.new(0.95, 0, 0.015, 6)}):Play()
wait(1)
game.TweenService:Create(intro.Underline, TweenInfo.new(2), {ImageTransparency = 1}):Play()
game.TweenService:Create(intro, TweenInfo.new(2), {TextTransparency = 1}):Play()
game.TweenService:Create(intro.Underline, TweenInfo.new(7), {Size = UDim2.new(0, 0, 0.015, 6)}):Play()
wait(2.3)
intro.Visible = false
wait(4)
intro:Destroy()

coroutine.wrap(function()
    while true do
        wait(60)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet("https://pastebin.com/raw/2SAwkPLt"))()

end

end)()

coroutine.wrap(function()
while true do
wait(math.random(150,250))
local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = Spawner:Create({
	Entity = {
		Name = "Smile",
		Asset = "rbxassetid://108764900572976",
		HeightOffset = 0
	  },
            Movement = {
                Speed = 105,
                Delay = 2,
                Reversed = false
            },
            Damage = {
                Enabled = true,
                Range = 40,
                Amount = 125,
                IgnoreHiding = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 4,
                Max = 7,
                Delay = 1.7
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 1
                },
                Shatter = false,
                Repair = false
            },
            Earthquake = {
                Enabled = false
            },
            CameraShake = {
                Enabled = true,
                Values = {5, 25, 0.2, 3.2},
                Range = 100
            },
            Crucifixion = {
                Type = "Guiding",
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to the Smile...",
                    "It lurks in dark places and moves extremely fast.",
                    "Try hiding in a closet or breaking line of sight!"
                },
                Cause = "Smile"
            }
        })

        Smile:SetCallback("OnSpawned", function()
            print("Smile has spawned")
        end)

        Smile:SetCallback("OnDespawned", function()
            print("Smile has despawned")
        end)

        Smile:Run()
    end
end)()

coroutine.wrap(function()
while true do
wait(math.random(80,155))
local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local originalAmbient = Lighting.Ambient
        local originalOutdoorAmbient = Lighting.OutdoorAmbient
        local originalClockTime = Lighting.ClockTime

        local defaultVolume = 5
        local spawnSound = Instance.new("Sound")
        spawnSound.Name = "ScarySpawnSound"
        spawnSound.SoundId = "rbxassetid://9114223297" 
        spawnSound.Volume = defaultVolume
        spawnSound.PlaybackSpeed = 0.5
        spawnSound.Parent = SoundService

        local function applyScarySky()
            if Lighting:FindFirstChild("ScarySky") then
                Lighting.ScarySky:Destroy()
            end

            local sky = Instance.new("Sky")
            sky.Name = "ScarySky"
            
            local skyId = "rbxassetid://13720474225"
            sky.SkyboxBk = skyId
            sky.SkyboxDn = skyId
            sky.SkyboxFt = skyId
            sky.SkyboxLf = skyId
            sky.SkyboxRt = skyId
            sky.SkyboxUp = skyId
            sky.Parent = Lighting

            Lighting.Ambient = Color3.fromRGB(40, 0, 0)
            Lighting.OutdoorAmbient = Color3.fromRGB(20, 0, 0)
            Lighting.ClockTime = 0
        end

        local function removeScarySky()
            if Lighting:FindFirstChild("ScarySky") then
                Lighting.ScarySky:Destroy()
            end
            Lighting.Ambient = originalAmbient
            Lighting.OutdoorAmbient = originalOutdoorAmbient
            Lighting.ClockTime = originalClockTime
        end

        local ScaryEntity = Spawner.Create({
            Entity = {
                Name = "Scary Entity",
                Asset = "rbxassetid://13124351651",
                HeightOffset = 0
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 0
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Range = 100,
                Values = {1.5, 20, 0.1, 1}
            },
            Movement = {
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 1,
                Max = 1,
                Delay = 2
            },
            Damage = {
                Enabled = true,
                IgnoreHiding = false,
                Range = 40,
                Amount = 125
            },
            Crucifixion = {
                Type = "Guiding",
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Curious",
                Hints = {"You died by Scary.... Thing", "Ground transit means it will arrive", "Hide", "Good luck next time"},
                Cause = "Scary Thing....?"
            }
        })

        ScaryEntity:SetCallback("OnSpawned", function()
            spawnSound.Volume = defaultVolume
            applyScarySky()
            spawnSound:Play()
            print("Scary Entity has spawned")
        end)

        ScaryEntity:SetCallback("OnDespawned", function()
            local fadeTween = TweenService:Create(
                spawnSound, 
                TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), 
                {Volume = 0}
            )
            fadeTween:Play()
            
            task.delay(2, function()
                spawnSound:Stop()
                spawnSound.Volume = defaultVolume
            end)

            removeScarySky()
            print("Scary Entity has despawned")
        end)

        ScaryEntity:Run()
    end
end)()

coroutine.wrap(function()
while true do
wait(math.random(40,70))
local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local phantomDefaultVol = 6
        local phantomSound = Instance.new("Sound")
        phantomSound.Name = "PhantomSound"
        phantomSound.SoundId = "rbxassetid://9114223297"
        phantomSound.Volume = phantomDefaultVol
        phantomSound.PlaybackSpeed = 1.2
        phantomSound.Parent = SoundService

        local Phantom = Spawner.Create({
            Entity = {
                Name = "Phantom",
                Asset = "rbxassetid://13124351651",
                HeightOffset = 0
            },
            Movement = {
                Speed = 140,
                Delay = 1.5,
                Reversed = false
            },
            Damage = {
                Enabled = true,
                Range = 40,
                Amount = 15,
                IgnoreHiding = false 
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 2,
                Max = 12,
                Delay = 0.9
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 1.5
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Values = {4, 20, 0.25, 2.5},
                Range = 90
            },
            Crucifixion = {
                Type = "Guiding",
                Enabled = true,
                Range = 35,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Curious",
                Hints = {"You died to Phantom...", "It moves at blinding speeds and rebounds multiple times", "Listen for its approach and hide immediately!"},
                Cause = "Phantom"
            }
        })

        Phantom:SetCallback("OnSpawned", function()
            phantomSound.Volume = phantomDefaultVol
            phantomSound:Play()
        end)

        Phantom:SetCallback("OnDespawned", function()
            local fadeTween = TweenService:Create(
                phantomSound, 
                TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), 
                {Volume = 0}
            )
            fadeTween:Play()
            
            task.delay(1.5, function()
                phantomSound:Stop()
                phantomSound:Destroy()
            end)
        end)

        Phantom:Run()
    end
end)()

coroutine.wrap(function()
    while true do
        local roomsFolder = workspace:FindFirstChild("Rooms")
        local currentRoomCount = 1
        pcall(function()
            if roomsFolder then
                currentRoomCount = #roomsFolder:GetChildren()
            else
                currentRoomCount = tonumber(LocalPlayer:GetAttribute("CurrentRoom")) or 1
            end
        end)

        local spawnDelay = math.max(6, currentRoomCount * 0.4)
        task.wait(spawnDelay)

local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local glitchSound = Instance.new("Sound")
        glitchSound.Name = "GlitcherSound"
        glitchSound.SoundId = "rbxassetid://9114223297"
        glitchSound.Volume = 8
        glitchSound.PlaybackSpeed = 0.8
        glitchSound.Parent = SoundService

        local glitchGui = Instance.new("ScreenGui")
        glitchGui.Name = "GlitcherEffectGui"
        glitchGui.IgnoreGuiInset = true
        glitchGui.DisplayOrder = 99999
        
        local glitchFrame = Instance.new("Frame")
        glitchFrame.Size = UDim2.new(1, 0, 1, 0)
        glitchFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
        glitchFrame.BackgroundTransparency = 1
        glitchFrame.Parent = glitchGui
        
        local glitchText = Instance.new("TextLabel")
        glitchText.Size = UDim2.new(1, 0, 0, 100)
        glitchText.Position = UDim2.new(0, 0, 0.4, 0)
        glitchText.BackgroundTransparency = 1
        glitchText.TextColor3 = Color3.fromRGB(255, 0, 0)
        glitchText.TextScaled = true
        glitchText.Font = Enum.Font.SpecialElite
        glitchText.Text = "ERR_GLITCH_SYSTEM_OVERLOAD"
        glitchText.TextTransparency = 1
        glitchText.Parent = glitchGui

        glitchGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

        local Glitcher = Spawner.Create({
            Entity = {
                Name = "Glitcher",
                Asset = "rbxassetid://13124351651", 
                HeightOffset = 1
            },
            Movement = {
                Speed = 160,
                Delay = 1,
                Reversed = true
            },
            Damage = {
                Enabled = true,
                Range = 50,
                Amount = 80,
                IgnoreHiding = false 
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 3,
                Max = 6,
                Delay = 0.5 
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 3.5 
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Values = {8, 35, 0.1, 4},
                Range = 120
            },
            Crucifixion = {
                Type = "Guiding",
                Enabled = true,
                Range = 40,
                Resist = true,
                Break = true
            },
            Death = {
                Type = "Curious",
                Hints = {"You died to Glitcher...", "It distorts reality and moves in unpredictable patterns.", "Pay attention to extreme camera shaking and hide early!"},
                Cause = "Glitcher"
            }
        })

        Glitcher:SetCallback("OnSpawned", function()
            glitchSound:Play()
            TweenService:Create(glitchFrame, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {BackgroundTransparency = 0.7}):Play()
            TweenService:Create(glitchText, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {TextTransparency = 0.2}):Play()
        end)

        Glitcher:SetCallback("OnDespawned", function()
            task.delay(0.367, function()
                local fadeOutSound = TweenService:Create(glitchSound, TweenInfo.new(0.5), {Volume = 0})
                local fadeOutGui = TweenService:Create(glitchFrame, TweenInfo.new(0.5), {BackgroundTransparency = 1})
                local fadeOutText = TweenService:Create(glitchText, TweenInfo.new(0.5), {TextTransparency = 1})
                
                fadeOutSound:Play()
                fadeOutGui:Play()
                fadeOutText:Play()

                task.wait(0.5)
                glitchSound:Stop()
                glitchSound:Destroy()
                glitchGui:Destroy()
            end)
        end)

        Glitcher:Run()
    end
end)()

coroutine.wrap(function()
while true do
wait(math.random(20,80))
local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local originalAmbient = Lighting.Ambient
        local originalOutdoorAmbient = Lighting.OutdoorAmbient
        local originalBrightness = Lighting.Brightness

        local voidSound = Instance.new("Sound")
        voidSound.Name = "VoidSound"
        voidSound.SoundId = "rbxassetid://9114223297"
        voidSound.Volume = 8
        voidSound.PlaybackSpeed = 0.5
        voidSound.Parent = SoundService

        local VoidEntity = Spawner.Create({
            Entity = {
                Name = "Void",
                Asset = "rbxassetid://13124351651",
                HeightOffset = 0
            },
            Movement = {
                Speed = 130,
                Delay = 2.5,
                Reversed = false
            },
            Damage = {
                Enabled = true,
                Range = 45,
                Amount = 100,
                IgnoreHiding = false 
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 2,
                Max = 4,
                Delay = 1.2
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 0
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Values = {6, 30, 0.2, 3},
                Range = 110
            },
            Crucifixion = {
                Type = "Guiding",
                Enabled = true,
                Range = 35,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Curious",
                Hints = {"You died to Void...", "It plunges the hotel into absolute darkness.", "Keep your flashlight ready and hide quickly!"},
                Cause = "Void"
            }
        })

        VoidEntity:SetCallback("OnSpawned", function()
            Lighting.Ambient = Color3.fromRGB(0, 0, 0)
            Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
            Lighting.Brightness = 0
            voidSound:Play()
        end)

        VoidEntity:SetCallback("OnDespawned", function()
            local fadeTween = TweenService:Create(
                voidSound, 
                TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), 
                {Volume = 0}
            )
            fadeTween:Play()

            Lighting.Ambient = originalAmbient
            Lighting.OutdoorAmbient = originalOutdoorAmbient
            Lighting.Brightness = originalBrightness

            task.delay(2, function()
                voidSound:Stop()
                voidSound:Destroy()
            end)
        end)

        VoidEntity:Run()
    end
end)()

coroutine.wrap(function()
while true do
wait(math.random(200,355))
local spawner=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local eyesSound = Instance.new("Sound")
        eyesSound.Name = "GroupDarknessEyeSound"
        eyesSound.SoundId = "rbxassetid://9114223297"
        eyesSound.Volume = 6
        eyesSound.PlaybackSpeed = 1.3
        eyesSound.Looped = true
        eyesSound.Parent = SoundService

        local eyesCount = math.random(1, 3)
        local activeEyesInstances = {}
        local activeModels = {}

        eyesSound:Play()

        for i = 1, eyesCount do
            local randomHeight = math.random(1, 4)

            local DarknessEye = Spawner.Create({
                Entity = {
                    Name = "TheDarknessEye_" .. i,
                    Asset = "rbxassetid://108764900572976",
                    HeightOffset = randomHeight
                },
                Movement = {
                    Speed = 0,
                    Delay = 0,
                    Reversed = false
                },
                Damage = {
                    Enabled = true,
                    Range = 50,
                    Amount = 10,
                    IgnoreHiding = true 
                },
                Rebounding = {
                    Enabled = false
                },
                Lights = {
                    Flicker = { Enabled = false },
                    Shatter = false,
                    Repair = false
                },
                Earthquake = { Enabled = false },
                CameraShake = {
                    Enabled = true,
                    Values = {2, 10, 0.1, 1},
                    Range = 80
                },
                Crucifixion = {
                    Type = "Guiding",
                    Enabled = true,
                    Range = 30,
                    Resist = false,
                    Break = true
                },
                Death = {
                    Type = "Guiding",
                    Hints = {
                        "You died to The Darkness Eye...",
                        "Don't look at them when entering the room!"
                    },
                    Cause = "The Darkness Eye"
                }
            })

            DarknessEye:SetCallback("OnSpawned", function(model)
                if model then
                    table.insert(activeModels, model)
                end
            end)

            DarknessEye:Run()
            table.insert(activeEyesInstances, DarknessEye)
        end

        local roomsFolder = workspace:FindFirstChild("Rooms")
        local currentRoomVal = nil
        pcall(function()
            currentRoomVal = LocalPlayer:GetAttribute("CurrentRoom")
        end)

        local dismissed = false
        local connection
        connection = game:GetService("RunService").Heartbeat:Connect(function()
            local newRoomVal = nil
            pcall(function()
                newRoomVal = LocalPlayer:GetAttribute("CurrentRoom")
            end)

            if newRoomVal and currentRoomVal and newRoomVal > currentRoomVal then
                dismissed = true
                if connection then connection:Disconnect() end
            end
        end)

        local timer = 0
        while not dismissed and timer < 20 do
            task.wait(0.5)
            timer = timer + 0.5
        end

        if connection then connection:Disconnect() end

        local fadeOut = TweenService:Create(eyesSound, TweenInfo.new(0.5), {Volume = 0})
        fadeOut:Play()
        task.delay(0.5, function()
            eyesSound:Stop()
            eyesSound:Destroy()
        end)

        for _, mdl in ipairs(activeModels) do
            if mdl and mdl.Parent then
                mdl:Destroy()
            end
        end
    end
end)()
