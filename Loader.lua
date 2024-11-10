-- Informations de l'application
local name = "AgoraCheat" -- Nom de l'application
local ownerid = "wmuVE0Akmp" -- ID de compte
local version = "1.0" -- Version de l'application

-- La clé correcte à entrer
local correctKey = "AgoraKey-Lifetime-2E34-DZ57-LHBI-F0GE-Kazik" -- Remplace par ta clé personnelle
local correctKey = "AgoraKey-Lifetime-GT34-WF4E-YM1I-43GR-Ov" -- Remplace par ta clé personnelle
local correctKey = "AgoraKey-Lifetime-9B42-TY56-KJUB-G9FE-xcvw"
local correctKey = "AgoraKey-Lifetime-7A23-LM89-RTPQ-X4AE"
local correctKey = "AgoraKey-Lifetime-Echbolispe
"


-- Interface de la fenêtre de clé
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

-- Attendre que le joueur soit prêt
local player = game.Players.LocalPlayer
player:WaitForChild("PlayerGui") -- Assure que la fenêtre s'affiche pour le joueur
ScreenGui.ResetOnSpawn = false -- La fenêtre reste même si le joueur réapparaît

-- Configuration de la fenêtre
ScreenGui.Parent = player.PlayerGui

-- Centrer la fenêtre en fonction de la taille de l'écran
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centre du cadre
Frame.Size = UDim2.new(0, 300, 0, 150) -- Taille fixe de 300x150
Frame.AnchorPoint = Vector2.new(0.5, 0.5) -- Point d'ancrage au milieu pour bien centrer

TextLabel.Parent = Frame
TextLabel.Text = "Veuillez entrer la clé pour continuer"
TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextSize = 16

TextBox.Parent = Frame
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.PlaceholderText = "Entrer la clé..."
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 14

TextButton.Parent = Frame
TextButton.Text = "Vérifier"
TextButton.Position = UDim2.new(0.1, 0, 0.7, 0)
TextButton.Size = UDim2.new(0.8, 0, 0.2, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.TextSize = 16

-- Fonction pour vérifier la clé
TextButton.MouseButton1Click:Connect(function()
    -- Si la clé est correcte
    if TextBox.Text == correctKey then
        print("Clé correcte, script lancé")
        ScreenGui:Destroy() -- Fermer la fenêtre de clé

        -- Exécuter ton script principal ici, par exemple :
        -- loadstring(game:HttpGet("https://raw.githubusercontent.com/FlowzFz/qzddzqd/main/dzedqz.lua"))()
    else
        -- Si la clé est incorrecte
        TextLabel.Text = "Clé incorrecte. Réessayez."
        TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Texte en rouge pour l'erreur
    end
end)
