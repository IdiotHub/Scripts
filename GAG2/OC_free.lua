-- This file was protected using Luraph Obfuscator v14.7 [https://lura.ph/]

getgenv().SCRIPT_KEY = "KEYLESS"

function isShiityExec()
    if not getgenv then return true end
    if not debug then return true end 
    local debugChecks = {
        "getupvalue", 
        "setupvalue",
        "info",
    }
    
    for _, func in pairs(debugChecks) do 
        if not debug[func] then return true end
    end
    
    if not getconnections then return true end
    
    return false
end

if isShiityExec() then 
    game.Players.LocalPlayer:Kick("Hi, IdiotHub is not supported by your exec.")
    return
end

loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/eea1b26727088d644cfeff35b856456467b72c76905bd6f60958c2bc69022754/download"))()

