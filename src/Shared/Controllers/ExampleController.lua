-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Instances --
local Packages = ReplicatedStorage:WaitForChild("Packages")

-- Packages --
local Knit = require(Packages.Knit)

-- Service --

local ExampleController = Knit.CreateController({
    Name = "ExampleService",
})

function ExampleController:KnitInit()

end

function ExampleController:KnitStart()

end

return ExampleController