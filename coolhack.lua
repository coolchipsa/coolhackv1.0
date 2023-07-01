local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 
В данный момент стоит тема "RJTheme3" ,
вы можете использовать другую тему приведённую ниже -
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
//////////////////////////////////////////////////////////////////

Что бы сделать свою тему , уберите часть скрипта из "комминтариев" ,
который находится чуть ниже , и вместо "RJTheme3" в переменной "Windows" - 
напишите переменную которая используется в скрипте чуть ниже .
]]
--[[
local colors = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]
-- Создать окно UI
local Window = Library.CreateLib("coolhack v 1.0", "RJTheme6")

-- Секция
local Tab = Window:NewTab("humanoid")

-- Подсекция
local Section = Tab:NewSection("humanoid")

-- Заголовок
Section:NewLabel("LabelText")

-- Кнопка
Section:NewButton("Noclip", "ButtonInfo", function()
        _G.ClipGui = true
_G.IncludeNoclip = true

local isEnabled = true

local UIS = game:GetService("UserInputService")

local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()








game:GetService("RunService").RenderStepped:Connect(function()
    if not Char:FindFirstChild("HumanoidRootPart") then return end
    if _G.IncludeNoclip then
        Char.HumanoidRootPart.CanCollide = not isEnabled
        Char.Collision.CanCollide = not isEnabled
    end

    local HrpCFrame = Char.HumanoidRootPart.CFrame

    local ray = Ray.new(HrpCFrame.Position, HrpCFrame.LookVector * 0.5)
    local part = workspace:FindPartOnRay(ray)
    if part and part.CanCollide == true and isEnabled then
        Char.HumanoidRootPart.Anchored = true
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, -1000, 0))
        task.wait(0.1)
        Char.HumanoidRootPart.Anchored = false
    end
end)

end)

-- Переключатель


-- Слайдер
Section:NewSlider("Walkspeed", "SliderInfo", 100, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewButton("Instant interact", "ButtonInfo", function()
  game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
        end)
end)
-- Текст Бокс
Section:NewButton("Imortalyti", "ButtonInfo", function()
  print("J")
local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,10,0)
end)
Section:NewButton("THIRD person", "ButtonInfo", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/coolchipsa/thirdperson/main/third%20person.lua')))()
end)
local Tab = Window:NewTab("Item")

-- Подсекция
local Section = Tab:NewSection("ITEM")

-- Заголовок
Section:NewLabel("LabelText")

Section:NewButton("Rainbow carpet", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/coolchipsa/rainbowcarpet/main/rainbow%20carpet.lua"))()
  end)
Section:NewButton("Tacos", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/coolchipsa/tacos/main/tacos.lua"))()
  end)
  local Tab = Window:NewTab("music")
  local Section = Tab:NewSection("humanoid")

-- Заголовок
Section:NewLabel("LabelText")

-- Кнопка
Section:NewButton("Raining tacos", "ButtonInfo", function()
local sound = Instance.new("Sound", game.Workspace)
					sound.SoundId = "rbxassetid://142376088"
					sound.Volume = 100000
					sound:Play()
end)
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
  
    Achievements.Get({
        Title = "u activated coolhack V 1.0",
        Desc = " ",
        Reason = " ",
        Image = "rbxassetid://12594647623",
    })