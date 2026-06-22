local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DAWOBABA_PREMIUM"
ScreenGui.Parent = LocalPlayer.PlayerGui

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0,550,0,400)
Main.Position = UDim2.new(0.5,-275,0.5,-200)
Main.BackgroundColor3 = Color3.fromRGB(10,10,20)
Main.Active = true
Main.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,20)
MainCorner.Parent = Main

local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30,10,50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,30))
})
Gradient.Parent = Main

local Stroke = Instance.new("UIStroke")
Stroke.Parent = Main
Stroke.Color = Color3.fromRGB(255,215,0)
Stroke.Thickness = 4
Stroke.Transparency = 0.3

local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1,0,0,70)
Title.Position = UDim2.new(0,0,0,10)
Title.Text = "DAWO BABA"
Title.TextColor3 = Color3.fromRGB(255,215,0)
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 32
Title.TextStrokeTransparency = 0.2
Title.TextStrokeColor3 = Color3.fromRGB(255,100,200)

local Close = Instance.new("TextButton")
Close.Parent = Main
Close.Size = UDim2.new(0,40,0,40)
Close.Position = UDim2.new(1,-50,0,10)
Close.Text = "✕"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 24
Close.BackgroundColor3 = Color3.fromRGB(200,50,50)
Close.TextColor3 = Color3.fromRGB(255,255,255)

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,12)
CloseCorner.Parent = Close

Close.MouseEnter:Connect(function()
    Close.BackgroundColor3 = Color3.fromRGB(255,50,50)
end)
Close.MouseLeave:Connect(function()
    Close.BackgroundColor3 = Color3.fromRGB(200,50,50)
end)

local KeyBox = Instance.new("TextBox")
KeyBox.Parent = Main
KeyBox.Size = UDim2.new(0.85,0,0,55)
KeyBox.Position = UDim2.new(0.075,0,0.30,0)
KeyBox.PlaceholderText = "PREMIUM ANAHTAR GİRİN"
KeyBox.Text = ""
KeyBox.Font = Enum.Font.GothamBold
KeyBox.TextSize = 22
KeyBox.BackgroundColor3 = Color3.fromRGB(25,25,45)
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0,12)
KeyCorner.Parent = KeyBox

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Parent = KeyBox
KeyStroke.Color = Color3.fromRGB(100,80,180)
KeyStroke.Thickness = 2

KeyBox.Focused:Connect(function()
    KeyStroke.Color = Color3.fromRGB(180,120,255)
end)
KeyBox.FocusLost:Connect(function()
    KeyStroke.Color = Color3.fromRGB(100,80,180)
end)

local Verify = Instance.new("TextButton")
Verify.Parent = Main
Verify.Size = UDim2.new(0.85,0,0,55)
Verify.Position = UDim2.new(0.075,0,0.52,0)
Verify.Text = "TIKLA AMCIK"
Verify.Font = Enum.Font.GothamBlack
Verify.TextSize = 24
Verify.BackgroundColor3 = Color3.fromRGB(180,80,255)
Verify.TextColor3 = Color3.fromRGB(255,255,255)

local VerifyCorner = Instance.new("UICorner")
VerifyCorner.CornerRadius = UDim.new(0,12)
VerifyCorner.Parent = Verify

Verify.MouseEnter:Connect(function()
    Verify.BackgroundColor3 = Color3.fromRGB(220,100,255)
end)
Verify.MouseLeave:Connect(function()
    Verify.BackgroundColor3 = Color3.fromRGB(180,80,255)
end)

local Status = Instance.new("TextLabel")
Status.Parent = Main
Status.BackgroundTransparency = 1
Status.Size = UDim2.new(1,0,0,40)
Status.Position = UDim2.new(0,0,0.78,0)
Status.Text = "HER ŞEY OKEY ALL SET!?"
Status.TextColor3 = Color3.fromRGB(0,255,120)
Status.Font = Enum.Font.GothamBold
Status.TextSize = 20

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

Verify.MouseButton1Click:Connect(function()
    local girilenKey = KeyBox.Text
    local dogruKey = "UZİMİSU"
    
    if girilenKey == dogruKey then
        Status.Text = "Premiumma hoş geldiniz"
        Status.TextColor3 = Color3.fromRGB(0,255,120)
        
        task.wait(3)
        
        ScreenGui:Destroy()
        
      
        local obfScript = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Fluxyyy333/HoshiOnTop/main/loader.lua"))()]]
        
        local func, err = loadstring(obfScript)
        if func then
            pcall(func)
        end
    else
        Status.Text = "Yanlış"
        Status.TextColor3 = Color3.fromRGB(255,50,50)
    end
end)
