local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Clpflip GUI Loader",
    SubTitle = "Beta",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local Tabs = {
    Loader = Window:AddTab({ Title = "Latest Versions", Icon = "rotate-ccw" }),
    Older = Window:AddTab({ Title = "Older Versions", Icon = "clock" })
}
do
    Tabs.Loader:AddParagraph({
        Title = "Welcome to the new Clipflip GUI Loader.",
        Content = "Select a version to use."
    })

    Tabs.Loader:AddButton({
        Title = "V3 for Solara",
        Description = "version 3.0.0-PB1",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/clipflip-rblx/clipflip-gui/main/3.0.0PB.lua'))()
            Fluent:Destroy()
        end
    })
        Tabs.Loader:AddButton({
        Title = "V3 for Wave",
        Description = "version 3.0.0-PB1",
        Callback = function()
                     Window:Dialog({
                Title = "V3 for Wave",
                Content = "Coming soon!",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                        end
                    },
                }
            })
        end
    })
        Tabs.Loader:AddButton({
        Title = "V2",
        Description = "version 2.0.32",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/clipflip-rblx/clipflip-gui/main/2-0-32.lua'))()
            Fluent:Destroy()
        end
    })
            Tabs.Older:AddButton({
        Title = "V1",
        Description = "version 1.0.0",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/clipflip-rblx/clipflip-gui/main/Archive/1.0.0.lua'))()
            Fluent:Destroy()
        end
    })
                Tabs.Older:AddButton({
        Title = "V2 Dev",
        Description = "version 2.0.27",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/clipflip-rblx/clipflip-gui/main/Archive/2.0.27.lua'))()
            Fluent:Destroy()
        end
    })
                    Tabs.Older:AddButton({
        Title = "V2 Canary",
        Description = "version 2.0.30",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/clipflip-rblx/clipflip-gui/main/Archive/2.0.30.lua'))()
            Fluent:Destroy()
        end
    })
end
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("ClipflipScripts")
SaveManager:SetFolder("ClipflipScripts/LoaderGUI")
Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()
