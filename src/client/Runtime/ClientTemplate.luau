---> service
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage:WaitForChild("Packages")

---> dependencies
local Module = { Disabled = true }

---> types

---> globals

---> private functions

---> public functions
function Module:Init()
    print("Init!")
end

function Module:Start()
    print("Start!")
end

return Module