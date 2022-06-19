-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- Instances --
local Packages = ReplicatedStorage:WaitForChild("Packages")

-- Packages --
local Knit = require(Packages.Knit)
local TableUtil = require(Packages.TableUtil)

-- Service --

local StoreService = Knit.CreateService({
    Name = "StoreService",
})

StoreService.Stores = {}
StoreService.StoreTemplate = {
    Health = 100,
    Hunger = 100,
}

function StoreService:CreateStore(Player: Player)
    self.Stores[Player] = TableUtil.Copy(self.StoreTemplate)
end

function StoreService:GetStore(Player: Player)
    return self.Stores[Player]
end

function StoreService:KnitStart()
    Players.PlayerAdded:Connect(function(Player)
        self:CreateStore(Player)
    end)
end

return StoreService