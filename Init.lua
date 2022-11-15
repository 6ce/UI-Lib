local Library;

local Success, Error = pcall(function()
    local Response = syn.request({
        Url = "https://raw.githubusercontent.com/6ce/UI-Lib/main/Main.lua",
        Method = "GET"
    })
    
    Library = loadstring(Response.Body)()
end)

if Error then
    return warn("Orion Init error: " .. Error)
end

Library:MakeNotification({
    Name = "MAGNET",
    Contet = "m_gnet was here",
    Time = 3
})

return Library
