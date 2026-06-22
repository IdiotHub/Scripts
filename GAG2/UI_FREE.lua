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

loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/bda9fc8956f2d07e60b36d6d7c772bc23456c51ce3faad3e9fb9af07c5b6a0d8/download"))()
