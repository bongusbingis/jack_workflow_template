---> globals
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage:WaitForChild("Packages")

---> dependencies
local Loader = require(Packages.Loader)
local Promise = require(Packages.Promise)

---> runtime
local function acquireClientModulesAndRunInNewThread()
    return Promise.new(function(resolveAfterStart, _)
        Promise.new(function(resolveAfterInit, _)
            Loader.SpawnAll(Loader.LoadChildren(script.Parent.Runtime), "Init", false)
            resolveAfterInit()
        end):andThen(function()
            Loader.SpawnAll(Loader.LoadChildren(script.Parent.Runtime), "Start", true)
            resolveAfterStart()
        end)
    end)
end

acquireClientModulesAndRunInNewThread():andThen(function()
    print("Client modules loaded successfully.")
end)