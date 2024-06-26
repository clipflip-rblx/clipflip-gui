local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local clipflipver = "2.0.27"
local buildtype = "Development Version"
local supported = {"solara", "codex", "arceus x", "delta", "hydrogen", "vega x", "frost", "frostware", "ethos", "alysse", "alysse android", "trigon evo", "trigon", "moreunc"}
local unsupported = {"incognito", "evon", "fluxus", "lunar"}
local solara = {"solara"}
if not table.find(solara, string.lower(identifyexecutor())) then
else
    enablenilinstances()
end


local Window = Fluent:CreateWindow({
    Title = "Clipflip GUI " .. clipflipver,
    SubTitle = buildtype,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = D
})

local Tabs = {
    Main = Window:AddTab({ Title = "Executor Testing", Icon = "laptop" }),
    Scripts = Window:AddTab({ Title = "Popular Scripts", Icon = "scroll" }),
    UsefulTools = Window:AddTab({ Title = "Useful Tools", Icon = "hammer"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    About = Window:AddTab({ Title = "About", Icon = "info" })
}

local Options = Fluent.Options

do
if not table.find(supported, string.lower(identifyexecutor())) then
 if not table.find(unsupported, string.lower(identifyexecutor())) then
    Fluent:Notify({
        Title = "Unverified executor",
        Content = getexecutorname().. " is an unverified executor.",
        SubContent = "We recommend using Arceus X or Solara.",
        Duration = 10
    })
else
    Fluent:Notify({
        Title = "Unsupported executor",
        Content = getexecutorname().. " is an unsupported executor.",
        SubContent = "We recommend using Arceus X or Solara.",
        Duration = 10
    })
end
else
end
    Tabs.Main:AddButton({
        Title = "Executor UNC Test",
        Description = "Gives you information about how many functions your executor supports",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will perform a UNC test and print the results in the console.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Main:AddButton({
        Title = "Print Executor Name",
        Description = "Find out about your executor's name and version",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will print the name and version of your executor in the console.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            print(identifyexecutor())
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Main:AddButton({
        Title = "Executor Vulnerability Test",
        Description = "Gives you information about what vulnerabilities in your executor can be abused",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will perform a vulnerability test and print the results in the console.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/test/main/executor_vuln_test.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "Krunox",
        Description = "Great script, has many useful features",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Krunox.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/b2cnJNar"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "CLOVR",
        Description = "Fun VR script",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute CLOVR.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/vr.lua"))()()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Remote Spy",
        Description = "Detect Remotes that are being fired",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Remote Spy.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGetAsync("https://github.com/richie0866/remote-spy/releases/latest/download/RemoteSpy.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Owl Hub",
        Description = "Universal Script Hub",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Owl Hub.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                             loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "Bypass Adonis Anti-Cheat",
        Description = "Bypass the in-game Adonis anti-cheat",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will bypass the Adonis Anti-Cheat.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGetAsync("https://pastebin.com/raw/BDAaKr8f"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Zap Hub",
        Description = "Script Hub",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Zap Hub.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.UsefulTools:AddButton({
        Title = "Teleport to a Fake Private Server",
        Description = "Teleport to a Fake Private Server",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will teleport you to a fake private server. This is currently not supported by 99% of executors.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGetAsync("https://pastebin.com/raw/0D1kCMfQ"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.UsefulTools:AddButton({
        Title = "Copy the game's ID to clipboard",
        Description = "Copy the game's ID to clipboard.",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will copy the game's ID to clipboard.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            setclipboard(game.PlaceId)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Fates Admin",
        Description = "Another one of popular admin commands scripts",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Infinite Yield.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.UsefulTools:AddButton({
        Title = "Download Game",
        Description = "Download the game's map as a Studio file",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will download the game file.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            saveinstance()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Sirius",
        Description = "All-in-one package for exploiters",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Sirius.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLTD/sirius/request/source.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "System Hub",
        Description = "Universal script hub",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute System Hub.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/AHMEDPLPL/System-hub/main/System%20hub%20V2', true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Thunder Client",
        Description = "Great Arsenal script, has aimbot, ESP and many other features",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Infinite Yield.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientForSolara"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Infinite Yield",
        Description = "One of the best admin-commands scripts ever, has loads of great featuers",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Infinite Yield.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Scripts:AddButton({
        Title = "Animation Logger",
        Description = "Log animation IDs that are played in your game",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Animation Logger.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Animation-Logger-13175"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "API Library",
        Description = "Use different fun APIs while in-game",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute API Library.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/apilibrary.lua",true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "Reaper Hub",
        Description = "Universal script hub",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Reaper Hub.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "Emoji Chat",
        Description = "Replaces in-game text with emojis like in Discord, for example :skull: will become the skull emoji",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Emoji Chat.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGetAsync'https://raw.githubusercontent.com/Exunys/Emoji-Chat/main/Resources/Main.lua')''
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.Main:AddButton({
        Title = "Print Executor Level",
        Description = "Find out about what level your executor is",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will print the executor level in the console.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            printidentity()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "Infinite Yield Reborn",
        Description = "An updated version of Infinite Yield with more features",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Infinite Yield Reborn.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://github.com/fuckusfm/infiniteyield-reborn/raw/master/source"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    Tabs.Scripts:AddButton({
        Title = "DEX Explorer",
        Description = "View and edit your game's models, like in Studio!",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute DEX Explorer.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
       Tabs.Scripts:AddButton({
        Title = "Nameless Admin",
        Description = "Easy-to-use Admin Commands script",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Nameless Admin.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
       Tabs.Scripts:AddButton({
        Title = "Unnamed ESP",
        Description = "Simple, and easy-to-use ESP for Roblox.",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Unnamed ESP.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
     Tabs.Scripts:AddButton({
        Title = "No Logging",
        Description = "Anti-logging script to prevent Roblox to ban you for bypassing.",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute NoLogging.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-NoLogging-13339'))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    if not table.find(solara, string.lower(identifyexecutor())) then
         Tabs.Scripts:AddButton({
        Title = "CMD-X",
        Description = "Awesome admin commands script, has many fun things",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute CMD-X.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    else
             Tabs.Scripts:AddButton({
        Title = "CMD-X",
        Description = "Awesome admin commands script, has many fun things",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute CMD-X.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/iDUXa7zH", true))()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
                            loadstring(game:HttpGet("https://pastebin.com/raw/iDUXa7zH", true))()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
    end
    Tabs.Scripts:AddButton({
        Title = "Verge Chat Bypasser",
        Description = "Bypass the Roblox chat filter",
        Callback = function()
            Window:Dialog({
                Title = "Information",
                Content = "This will execute Verge Chat Bypasser.",
                Buttons = {
                    {
                        Title = "Okay",
                        Callback = function()
                        Fluent:Notify({
                             Title = "Key Copied!",
                             Content = "This script has a key system. The key has been copied to clipboard.",
                             SubContent = "If your executor doesn't support copying, the key is &6IvM84n0TjaY!",
                              Duration = 10
                          })
                            setclipboard("&6IvM84n0TjaY!")
                           loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/Bypass/main/v3rge"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
        Tabs.About:AddParagraph({
        Title = "You are using Clipflip GUI ".. buildtype,
        Content = clipflipver.. " - ".. identifyexecutor()
    })
end

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Clipflip GUI",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
