-- Services
local StarterGui = game:GetService("StarterGui")

-- UI Elements
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyFrame = Instance.new("Frame")
local KeyBox = Instance.new("TextBox")
local KeyButton = Instance.new("TextButton")
local KeyLabel = Instance.new("TextLabel")

ScreenGui.Name = "KeySystemGUI"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Active = true
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSans
Title.TextSize = 20

KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = MainFrame
KeyFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyFrame.Size = UDim2.new(1, 0, 0, 90)
KeyFrame.Position = UDim2.new(0, 0, 0, 30)

KeyLabel.Name = "KeyLabel"
KeyLabel.Parent = KeyFrame
KeyLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyLabel.Size = UDim2.new(1, 0, 0, 30)
KeyLabel.Position = UDim2.new(0, 0, 0, 0)
KeyLabel.Text = "Enter Key:"
KeyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyLabel.Font = Enum.Font.SourceSans
KeyLabel.TextSize = 18

KeyBox.Name = "KeyBox"
KeyBox.Parent = KeyFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
KeyBox.Size = UDim2.new(1, -20, 0, 30)
KeyBox.Position = UDim2.new(0, 10, 0, 30)
KeyBox.Font = Enum.Font.SourceSans
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextSize = 18

KeyButton.Name = "KeyButton"
KeyButton.Parent = KeyFrame
KeyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
KeyButton.Size = UDim2.new(0.8, -20, 0, 30)
KeyButton.Position = UDim2.new(0.1, 10, 0, 70)
KeyButton.Text = "Submit Key"
KeyButton.Font = Enum.Font.SourceSans
KeyButton.TextSize = 18

-- Key Functionality
KeyButton.MouseButton1Click:Connect(function()
    local enteredKey = KeyBox.Text
    if enteredKey == "kieroisbetter" then
        StarterGui:SetCore("SendNotification", {
            Title = "Key System",
            Text = "Correct",
            Duration = 3
        })
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/brandonmakerlol/kiero.kat/main/hub"))()
        ScreenGui:Destroy()
    else
        StarterGui:SetCore("SendNotification", {
            Title = "Key System",
            Text = "Wrong Key",
            Duration = 3
        })
    end
end)
