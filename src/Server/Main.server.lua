local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Packages = ReplicatedStorage:WaitForChild("Packages")
local Services = ServerScriptService:WaitForChild("Services")

local Knit = require(Packages.Knit)

Knit.AddServices(Services)

Knit.Start():andThen(function()
    print("All services started!")
end):catch(warn)