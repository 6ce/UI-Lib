local Library;

local Success, Error = pcall(function()
    local Response = syn.request({
        Url = "https://raw.githubusercontent.com/6ce/UI-Lib/main/Source.lua",
        Method = "GET"
    })
    
    Library = loadstring(Response.Body)()
end)

if Error then
    return warn("UI-Lib Init error: " .. Error)
end

Library:MakeNotification({
    Name = "MAGNET",
    Content = "m_gnet was here",
    Time = 3
})

return Library
