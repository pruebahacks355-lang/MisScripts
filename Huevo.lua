local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local TITULO = "☘ GRIMORIO ☘"
local MENSAJE = "¡Ha aparecido un huevo gigante!"
local SUBTITULO = "Una magia desconocida ha despertado... ¡ve a buscarlo!"

local NEGRO = Color3.fromRGB(12, 12, 16)
local ORO = Color3.fromRGB(255, 200, 60)
local VERDE = Color3.fromRGB(60, 200, 90)
local ROJO = Color3.fromRGB(170, 25, 35)

local gui = Instance.new("ScreenGui")
gui.Name = "HuevoGiganteGui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 100
gui.Parent = playerGui

local overlay = Instance.new("Frame")
overlay.Size = UDim2.fromScale(1, 1)
overlay.BackgroundColor3 = Color3.new(0, 0, 0)
overlay.BackgroundTransparency = 1
overlay.BorderSizePixel = 0
overlay.Parent = gui

local main = Instance.new("Frame")
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromOffset(0, 0)
main.BackgroundColor3 = NEGRO
main.BorderSizePixel = 0
main.ClipsDescendants = true
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)

local stroke = Instance.new("UIStroke")
stroke.Color = ORO
stroke.Thickness = 3
stroke.Parent = main

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 14)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 12, 14)),
})
gradient.Rotation = 90
gradient.Parent = main

local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0, 44)
header.BackgroundColor3 = ROJO
header.BorderSizePixel = 0
header.Parent = main

local headerGrad = Instance.new("UIGradient")
headerGrad.Color = ColorSequence.new(ROJO, Color3.fromRGB(60, 8, 12))
headerGrad.Parent = header

local titulo = Instance.new("TextLabel")
titulo.BackgroundTransparency = 1
titulo.Size = UDim2.new(1, -60, 1, 0)
titulo.Position = UDim2.fromOffset(14, 0)
titulo.Font = Enum.Font.GothamBlack
titulo.Text = TITULO
titulo.TextColor3 = ORO
titulo.TextSize = 20
titulo.TextXAlignment = Enum.TextXAlignment.Left
titulo.Parent = header

local cerrar = Instance.new("TextButton")
cerrar.AnchorPoint = Vector2.new(1, 0.5)
cerrar.Position = UDim2.new(1, -8, 0.5, 0)
cerrar.Size = UDim2.fromOffset(30, 30)
cerrar.BackgroundColor3 = NEGRO
cerrar.Font = Enum.Font.GothamBlack
cerrar.Text = "X"
cerrar.TextColor3 = ORO
cerrar.TextSize = 18
cerrar.AutoButtonColor = false
cerrar.Parent = header
Instance.new("UICorner", cerrar).CornerRadius = UDim.new(1, 0)
local cerrarStroke = Instance.new("UIStroke")
cerrarStroke.Color = ORO
cerrarStroke.Thickness = 2
cerrarStroke.Parent = cerrar

local trebol = Instance.new("TextLabel")
trebol.AnchorPoint = Vector2.new(0.5, 0.5)
trebol.Position = UD
