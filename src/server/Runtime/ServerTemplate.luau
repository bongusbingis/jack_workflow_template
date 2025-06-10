---> module declaration
local Module = { Disabled = true }

---> services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

---> dependencies
local Packages = ReplicatedStorage:WaitForChild("Packages")

---> types

---> globals

---> constants

---> private functions

---> public functions
function Module:Init()
    print("Init client")
end

function Module:Start()
    print("Start client")
end

return Module