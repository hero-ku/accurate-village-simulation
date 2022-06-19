local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Packages = ReplicatedStorage:WaitForChild("Packages")
local Controllers = ReplicatedStorage:WaitForChild("Controllers")

local Knit = require(Packages.Knit)

Knit.AddControllers(Controllers)

Knit.Start():andThen(function()
    print("Client started!")
end):catch(warn)