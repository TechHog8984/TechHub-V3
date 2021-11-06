local link = 'https://raw.githubusercontent.com/TechHog8984/TechHub-V3/main/ui/UILibV3.lua'

return loadstring(
    (function()
        local success, body = pcall(function()return syn.request{Url = link, Method = 'GET'}.Body end)
        if success and body then
            return body
        else
            return game:HttpGet(link)
        end
    end)()
)()
