-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Instances --
local Packages = ReplicatedStorage:WaitForChild("Packages")

-- Packages --
local Knit = require(Packages.Knit)

-- Service --

local ExampleService = Knit.CreateService({
    Name = "ExampleService",
})

function ExampleService:KnitInit()

end

function ExampleService:KnitStart()

end

return ExampleService