local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local clipflipver = "3.0.0"
local plcid = game.PlaceId
local buildtype = "| Lite"
local lplayer = game.Players.LocalPlayer
local supported = {"solara", "codex", "arceus x", "delta", "hydrogen", "vega x", "frost", "frostware", "ethos", "alysse", "alysse android", "trigon evo", "trigon", "moreunc", "fluxus", "evon"}
local unsupported = {"incognito", "lunar", "feather"}
local exploitname = identifyexecutor()
local Window = Fluent:CreateWindow({ Title = "Clipflip GUI " .. clipflipver, SubTitle = buildtype, TabWidth = 160, Size = UDim2.fromOffset(580, 460), Acrylic = false, Theme = "Amethyst", MinimizeKey = D})
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Main = Window:AddTab({ Title = "Executor Testing", Icon = "laptop" }),
    Admin = Window:AddTab({ Title = "Admin", Icon = "code" }),
    UsefulTools = Window:AddTab({ Title = "Useful Tools", Icon = "hammer"}),
    Game = Window:AddTab({ Title = "Games", Icon = "gamepad" }),
    Univ = Window:AddTab({ Title = "Universal", Icon = "globe" }),
    Chat = Window:AddTab({ Title = "Chat", Icon = "message-circle" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "dice-6" }),
    UI = Window:AddTab({ Title = "GUI", Icon = "layout-grid" }),
    Spoof = Window:AddTab({ Title = "Spoofs", Icon = "ghost" }),
    Aim = Window:AddTab({ Title = "Combat", Icon = "crosshair" }),
    Qol = Window:AddTab({ Title = "Quality of life", Icon = "list-plus" }),
    Cmds = Window:AddTab({ Title = "Commands", Icon = "terminal" }),
    Log = Window:AddTab({ Title = "Changelog", Icon = "file-clock" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    About = Window:AddTab({ Title = "About", Icon = "info" })
}
local Options = Fluent.Options

--custom functions
local function CUSTOMFUNCS_fake_script()
local script = Instance.new('LocalScript', NewInstanceScript)
function getplatform()
    local inputsrv = game:GetService("UserInputService")
        if inputsrv:GetPlatform() ~= "Enum.Platform.Windows" then
            return 'Windows'
        elseif inputsrv:GetPlatform() ~= "Enum.Platform.OSX" then
            return 'macOS'
        elseif inputsrv:GetPlatform() ~= "Enum.Platform.IOS" then
            return 'iOS'
        elseif inputsrv:GetPlatform() ~= "Enum.Platform.UWP" then
            return 'Windows'
        elseif inputsrv:GetPlatform() ~= "Enum.Platform.Android" then
            return 'Android'
	    else return 'Unknown'
    end
end
        end
function getclientid()
    local analyticsrv = game:GetService("RbxAnalyticsService")
    return analyticsrv:GetClientId()
end
function getexecutorversion()
    return select(2, identifyexecutor())
end
function getplayername()
    local plr = game.Players.LocalPlayer
    return plr.Name
end
function getplayerid()
    local plr = game.Players.LocalPlayer
    return plr.UserId
end
function getping()
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingstr = rawping:sub(1,#rawping-7)
    local pingnum = tonumber(pingstr)
    local ping = math.round(pingnum)
    return ping.. " ms"
end
function getfps()
    local rawfps = game:GetService("Stats").Workspace.Heartbeat:GetValue()
    local fpsnum = tonumber(rawfps)
    local fps = math.round(fpsnum)
    return fps
end
function getgameid()
    return game.PlaceId
end
function getgamename()
    local marketsrv =  game:GetService("MarketplaceService")
    return marketsrv:GetProductInfo(getgameid()).Name
end
function getgamedescription()
    local marketsrv =  game:GetService("MarketplaceService")
    return marketsrv:GetProductInfo(gameid()).Description
end
function getjobid()
    return game.JobId
end
function iy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    return
end
function unctest()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
    return
end
function kick(reason)
    game.Players.LocalPlayer:Kick(reason)
    return
end
coroutine.wrap(CUSTOMFUNCS_fake_script)()

do --main gui
    if not table.find(supported, string.lower(exploitname)) then
        if not table.find(unsupported, string.lower(exploitname)) then
            Fluent:Notify({ Title = "Unverified executor", Content = getexecutorname().. " is an unverified executor.", SubContent = "We recommend using Arceus X or Solara.", Duration = 10})
        else
            Fluent:Notify({ Title = "Unsupported executor", Content = getexecutorname().. " is an unsupported executor.", SubContent = "We recommend using Arceus X or Solara.",Duration = 10})
        end
    end
    Tabs.Home:AddParagraph({
        Title = "Welcome to Clipflip GUI ".. buildtype,
        Content = ""
    })
    Tabs.Home:AddParagraph({
        Title = "Your username is ".. getplayername(),
        Content = "User ID is ".. getplayerid()
    })
    Tabs.Home:AddParagraph({
        Title = "You are playing "..getgamename(),
        Content = "Game ID is "..getgameid()
    })
    Tabs.Home:AddParagraph({
        Title = "You are using "..exploitname.. " version ".. getexecutorversion().. " on ".. getplatform(),
        Content = "It is level "..getthreadidentity()
    })
        Tabs.Home:AddParagraph({
        Title = "You have ".. getfps().. " FPS",
        Content = "And ".. getping().. " ping"
    })
    Tabs.Main:AddButton({
        Title = "Executor UNC Test",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
        end
    })
    Tabs.Main:AddButton({
        Title = "Print Executor Name",
        Description = "",
        Callback = function()
            print(exploitname)
        end
    })

    Tabs.Main:AddButton({
        Title = "Executor Vulnerability Test",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/test/main/executor_vuln_test.lua"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "CLOVR",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/vr.lua"))()
        end
    })
        Tabs.Univ:AddButton({
        Title = "Gamepass Buyer V2",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/6982de484735e730494b2d5a10fd6a2a/raw/a92563b0cd6a63683341a09f54baccea5349ed69/feGamepassV2",true))()
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "MoreUNC",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-MoreUNC-13110'))()
        end
    })
        Tabs.UsefulTools:AddButton({
        Title = "Print",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/test/main/executor_vuln_test.lua"))()
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "Copy game ID to clipboard",
        Description = "",
        Callback = function()
            setclipboard(getgameid())
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "Copy Job ID to clipboard",
        Description = "",
        Callback = function()
            setclipboard(getjobid())
        end
    })
    Tabs.Admin:AddButton({
        Title = "QuirkyCMD",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "Download Game",
        Description = "",
        Callback = function()
            saveinstance()
        end
    })
    Tabs.Qol:AddButton({
        Title = "Sirius",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLTD/sirius/request/source.lua"))()
        end
    })
    
    Tabs.Univ:AddButton({
        Title = "System Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AHMEDPLPL/System-hub/main/System%20hub%20V2', true))()
end
    })
    Tabs.Game:AddButton({
        Title = "Natural Disaster Survival",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubNaturalDisasterSurvival"))()
        end
    })
    Tabs.Game:AddButton({
        Title = "RetroStudio",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/mruhg5iZ'))()
        end
    })
        Tabs.Game:AddButton({
        Title = "PM",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/kiwixcheat/000x999/main/projectmugetsu.lua'))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Counter Blox",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solariscb_beta.lua",true))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Anime Punching Simulator 2",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2703/Main/main/Mainscript", true))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Plank It!",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/PlankIt"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Trampoline Battle Simulator",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Trampoline%20Battle%20Simulator"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Teddy Escape",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Teddy%20Escape%20NEW"))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Bee Swarm Simulator",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Tower of Hell",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/hello-n-bye/starry/blob/main/main.lua/?raw=true", true))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Find the Powers",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Find-The-Powers-160-Gui-Script-14401", true))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Break in 2",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/hello-n-bye/starry/blob/main/main.lua/?raw=true", true))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Blox Fruits",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Nearz1/Milenio-X-Hub/main/Universal%20FE"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Hoopz Basketball",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://paste.fo/raw/229d44565614"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Arsenal",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua"))()
        end
    })

            Tabs.Game:AddButton({
        Title = "Bad Business",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/synprotectgui/synprotectgui/main/Loader.lua",true))()
        end
    })
                Tabs.Game:AddButton({
        Title = "Project Delta",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/synprotectgui/synprotectgui/main/Loader.lua",true))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Blade Ball",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/Blade.lua"))() 
        end
    })
        Tabs.Game:AddButton({
        Title = "Kohls Admin House NBC",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/quivings/KAH/main/CMD%20v3.lua"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Murder Mystery 2",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Bridge Simulator",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/Bac0nHck/Scripts/blob/main/BridgeSimulator?raw=true"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Block Digging Simulator",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Block%20Digging%20Simulator"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Gamer Pet Simulator",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Gamer%20Life%20Simulator"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Better Music?",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BetterMusic"))()
        end
    })

            Tabs.Game:AddButton({
        Title = "Jujutsu Shenanigans",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/JJS/main/Solara"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Phantom Forces",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0d88df320112e490012f8c2d41538ecd.lua"))()
        end
    })
                Tabs.Game:AddButton({
        Title = "Lumber Tycoon 2",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter/main/lt2'))("")
        end
    })
    Tabs.Admin:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
        Tabs.Admin:AddButton({
        Title = "Jailbreak",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/zyn789/Aoi-Script/main/Jailbreak"))()
        end
    })
            Tabs.Admin:AddButton({
        Title = "Card Ride into Rdite",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeianRussell/ZeianRussell/main/Rdite%20Script%20%5BNew%5D"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Egg Tree Incremental",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Egg%20Tree%20Incremental"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Card Ride into Rdite",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeianRussell/ZeianRussell/main/Rdite%20Script%20%5BNew%5D"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Fabled Legacy",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/FL/main/Solara"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Project Slayers",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/Scripts2024/main/projslayr"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "Animation Logger",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Animation-Logger-13175"))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "Emoji Chat",
        Description = "",
        Callback = function()
            loadstring(game:HttpGetAsync'https://raw.githubusercontent.com/Exunys/Emoji-Chat/main/Resources/Main.lua')''
        end
    })
    Tabs.Main:AddButton({
        Title = "Print Executor Level",
        Description = "",
        Callback = function()
            printidentity()
        end
    })
    Tabs.UI:AddButton({
        Title = "Alysse Android UI",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/NathTheDev/AlysseAndroid/main/AlysseUI.lua'))()
        end
    })
        Tabs.UI:AddButton({
        Title = "Vega X Android UI",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://cdn.discordapp.com/attachments/1241328065938980875/1252878152846282802/VegaXUIForSolara.txt?ex=6673d134&is=66727fb4&hm=025d1b712b81503a3e947cde04f17eb0ca15ef93a32b2dfe9fddeadaec0a619c&"))()
        end
    })
        Tabs.UI:AddButton({
        Title = "Evon Android UI",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/0rLpNjmb'))()
        end
    })
                Tabs.UI:AddButton({
        Title = "Trigon Evo Android UI",
        Description = "",
        Callback = function()
            	loadstring(game:HttpGet("https://raw.githubusercontent.com/relbaldski/bald/main/baldscript.lua",true))()
        end
    })
                Tabs.UI:AddButton({
        Title = "Synapse X Internal UI",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua'))()
        end
    })
                    Tabs.UI:AddButton({
        Title = "Show Arceus X Ban Screen",
        Description = "",
        Callback = function()
            	loadstring(game:HttpGet("https://pastebin.com/raw/rpabjTsv",true))()
        end
    })
        Tabs.Misc:AddButton({
        Title = "Arceus X HWID Ban Checker",
        Description = "",
        Callback = function()
            local http = cloneref(game:GetService("HttpService"))
            local succ, result = pcall(function()
	        return http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/bannedusers"))
            end)
            if succ and result[gethwid()] then
                Window:Dialog({Title = "Ban Check Result",Content = "You're banned from Arceus X",Buttons = {{Title = "OK",Callback = function()end}}})
            else
                Window:Dialog({Title = "Ban Check Result",Content = "You're not banned from Arceus X",Buttons = {{Title = "OK",Callback = function()end}}})
            end
            end
    })
            Tabs.Misc:AddButton({
        Title = "Arceus X User ID Ban Checker",
        Description = "",
        Callback = function()
            local http = cloneref(game:GetService("HttpService"))
            local succ, result = pcall(function()
	        return http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/bannedusers"))
            end)
            if succ and result[lplayer.UserId] then
                Window:Dialog({Title = "Ban Check Result",Content = "You're banned from Arceus X",Buttons = {{Title = "OK",Callback = function()end}}})
            else
                Window:Dialog({Title = "Ban Check Result",Content = "You're not banned from Arceus X",Buttons = {{Title = "OK",Callback = function()end}}})
            end
            end
    })
                local kick = Tabs.Misc:AddInput("kick", {
        Title = "Kick Yourself",
        Default = "",
        Placeholder = "Reason",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            kick(Value)
        end
    })
                local exec = Tabs.Misc:AddInput("exec", {
        Title = "Execute Script",
        Default = "",
        Placeholder = "Script",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            loadstring(Value)()
        end
    })
        Tabs.Spoof:AddButton({
        Title = "Spoof HWID",
        Description = "",
        Callback = function()
                writefile("hwid-spoofed.txt", string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122)))
                local function SPOOFHWID_fake_script()
	            local script = Instance.new('LocalScript', SpooferInstance)
	            function gethwid()
                    return readfile("hwid-spoofed.txt")
	            end
            end
            coroutine.wrap(SPOOFHWID_fake_script)()
        end
    })
        local spfhwid = Tabs.Spoof:AddInput("spfhwid", {
        Title = "Set your HWID",
        Default = "",
        Placeholder = "Type here",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
                writefile("hwid-spoofed.txt", Value)
                local function SPOOFHWID_fake_script()
	            local script = Instance.new('LocalScript', SpooferInstance)
	            function gethwid()
                    return readfile("hwid-spoofed.txt")
	            end
            end
            coroutine.wrap(SPOOFHWID_fake_script)()
        end
    })
            local spfhwid = Tabs.Spoof:AddInput("spfhwid", {
        Title = "Spoof Thread Identity",
        Default = "",
        Placeholder = "Type here",
        Numeric = true,
        Finished = true,
        Callback = function(Value)
            getgenv().Identity = Value
                local function SPOOFIDENTITY_fake_script()
	            local script = Instance.new('LocalScript', SpoofingInstance)
	                function getthreadidentity()
		                return Identity
	                end
                end
                coroutine.wrap(SPOOFIDENTITY_fake_script)()
        end
    })
            local spfexec = Tabs.Spoof:AddInput("spfexec", {
        Title = "Spoof Executor Name",
        Default = "",
        Placeholder = "Type here",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            local function SPOOFEXEC_fake_script()
	        local script = Instance.new('LocalScript', SpooferInstance)
	            function identifyexecutor()
                    return Value
	            end
                function getexecutorname()
                    return Value
	            end
            end
            coroutine.wrap(SPOOFEXEC_fake_script)()
        end
    })
    Tabs.Admin:AddButton({
        Title = "Infinite Yield Reborn",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/fuckusfm/infiniteyield-reborn/raw/master/source"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "DEX Explorer",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
    Tabs.Admin:AddButton({
        Title = "Nameless Admin",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
        end
    })
    Tabs.Aim:AddButton({
        Title = "Unnamed ESP",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
        end
    })
        Tabs.Aim:AddButton({
        Title = "Random ESP",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://paste.gg/p/anonymous/2ae4ceae47774c0e933dc423a4d6a793/files/0cf31d1dc7f640288d534338af459dd9/raw'))()
        end
    })
            Tabs.Aim:AddButton({
        Title = "Azure V4",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://cdn.discordapp.com/attachments/1243707526625624115/1243707872479543428/azure_v4.txt?ex=667958f7&is=66780777&hm=ab2b32dd4dd55c3785fb6b2762e9910de2e7a7cb0340e3a14260782e4cb5d1ba&'))()
        end
    })
            Tabs.Aim:AddButton({
        Title = "Thunder Client Lite",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientGameSupport'))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "No Logging",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-NoLogging-13339'))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "Vadrifts Chat Bypasser",
        Description = "",
        Callback = function()
            Fluent:Notify({
                Title = "Key Copied!",
                Content = "This script has a key system. The key has been copied to clipboard.",
                SubContent = "If your executor doesn't support copying, the key is P1d#uT",
                Duration = 15
            })
            setclipboard("P1d#uT")
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/Bypass/main/vadrifts"))()
        end
    })
        Tabs.Chat:AddButton({
        Title = "Heartasians Auto-Bypass",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-chat-bypasser-13878'))()
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Enable Noclip",
        Description = "",
        Callback = function()
            local speaker = game.Players.LocalPlayer
            for _, child in pairs(speaker.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                    child.CanCollide = false
                end
            end
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Disable Noclip",
        Description = "",
        Callback = function()
            local speaker = game.Players.LocalPlayer
            for _, child in pairs(speaker.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == false and child.Name ~= floatName then
                    child.CanCollide = true
                end
            end
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Fly",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://pastefy.app/nFLFeUWS/raw'))()
        end
    })
    local ws = Tabs.Cmds:AddInput("ws", {
        Title = "Set your walkspeed",
        Default = "",
        Placeholder = "Type here",
        Numeric = true,
        Finished = true,
        Callback = function(Value)
            lplayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Reset your walkspeed",
        Description = "",
        Callback = function()
            lplayer.Character.Humanoid.JumpPower = 16
        end
    })
    local jp = Tabs.Cmds:AddInput("jp", {
        Title = "Set your jumppower",
        Default = "",
        Placeholder = "Type here",
        Numeric = true,
        Finished = true,
        Callback = function(Value)
            lplayer.Character.Humanoid.JumpPower = Value
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Reset your jumppower",
        Description = "",
        Callback = function()
            lplayer.Character.Humanoid.JumpPower = 50
        end
    })
    Tabs.Cmds:AddButton({
        Title = "Infinite Jump",
        Description = "",
        Callback = function()
            game:GetService("UserInputService").JumpRequest:connect(function()
                lplayer.Character.Humanoid:ChangeState("Jumping")
            end)
        end
    })
    Tabs.About:AddParagraph({
        Title = "You are using Clipflip GUI ".. buildtype,
        Content = clipflipver.. " - ".. exploitname
    })
        Tabs.About:AddParagraph({
        Title = "Credits:",
        Content = "Clipflip - made this whole script\nViz - help with script implementation\nT - basic script optimisation\nFluent UI - base for this script\nCelery - inspired me to make this\nScriptblox.com - helped with finding good scripts\nplayer478129 - helped patch HWID spoofer detections"
    })
        Tabs.Log:AddParagraph({
        Title = "3.0.0",
        Content = "|+| Wrote Changelogs for V3\n|+| Added 12 New Games\n|+| Added Custom Functions\n|-| Removed Script Auto-Select"})
    Tabs.Log:AddParagraph({
        Title = "3.0.0 Public Beta",
        Content = "|+| New Script loader\n|+| Added Spoofers\n|+| Script Optimisation\n|+| Added Game-based Script auto-selector\n|+| Added 20 New Scripts\n|+| Now open-source\n|+| Full Solara Support\n|-| Removed Broken Scripts"})
    Tabs.Log:AddParagraph({
        Title = "2.0.32",
        Content = "|+| Added More Games\n|+| Added Killswitch Mode"})
    Tabs.Log:AddParagraph({
        Title = "2.0.31",
        Content = "|+| Added in-game Feedback and Bug Reports\n|+| Added MoreUNC\n|+| Added Changelog\n|+| Added Executor Blacklists (Only Feather)\n|+| Now in Beta Phase\n|-| Removed Noclip QuickCMD\n|-| No Longer Open-Source"})
    Tabs.Log:AddParagraph({
        Title = "2.0.30",
        Content = "|+| All Scripts are now sorted by Genre Tabs\n|+| Added CMD v3"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.29",
        Content = "|+| Some scripts are now sorted by Genre Tabs"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.28",
        Content = "|+| Added Home Tab\n|+| Added Noclip FastCMD\n|*| Fixed some bugs"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.27",
        Content = "|+| New UI Library\n|+| Back in the Dev phase\n|-| Removed Executor Blacklists\n|-| Removed MoreUNC"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.26",
        Content = "|+| Added Fates Admin\n|*| Fixed the script not working"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.25",
        Content = "|+| CMD-X is now supported by Solara thanks to a few modifications\n|+| Added Executor Blacklists\n|*| Fixed Adonis Bypass"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.24",
        Content = "|+| Added CMD-X \n|+| Added Infinite Yield\n|*| Fixed Adonis Bypass\n|*| Fixed Fake Private Server\n|-| Removed Incognito Support"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.23",
        Content = "|+| Added Incognito v1 Support \n|+| MoreUNC is now executed automatically"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.22",
        Content = "|+| Added API Library \n|+| System Hub\n|+| Added auto-enabling of getnilinsatnces on Solara\n|+| Added Animation Logger\n|+| Trigon Evo is now a supported executor\n|+| Entered the Beta Phase"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.21",
        Content = "|+| Added Verge Chat Bypasser\n|*| Fixed NoLogging script bug"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.20",
        Content = "|+| Added NoLogging Script"
    })
    Tabs.Log:AddParagraph({
        Title = "2.0.19",
        Content = "|+| New UI lib\n|+| Public Release"
    })
        Tabs.Log:AddParagraph({
        Title = "1.0.17",
        Content = "|+| Public Beta Release\n|+| Added 7 New Scripts\n|*| Bug Fixes"
    })
        Tabs.Log:AddParagraph({
        Title = "1.0.0a Debug",
        Content = "|+| Private Beta Release"
    })
end
if not isfile("ClipflipScripts/ClipflipGUI") then

else
print("Saved settings loaded")
end
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("ClipflipScripts")
SaveManager:SetFolder("ClipflipScripts/ClipflipGUI")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Window:Dialog({Title = "Welcome to Clipflip GUI V3 Beta",Content = "If you encounter bugs, please report them in the Discord.",Buttons = {{Title = "OK",Callback = function()end}}})
SaveManager:LoadAutoloadConfig()
