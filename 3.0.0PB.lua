local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local clipflipver = "3.0.0"
local plcid = game.PlaceId
local buildtype = "Public Beta 1"
local lplayer = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
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
            local gmslct = {
    Arsenal = 286090429,
    Hoopz = 6229116934,
    NaturalDisasterSurvival = 189707,
    Retrostudio = 5846386835,
    PM = 9447079542,
    counterblox = 301549746,
    AnimePunchingSim2 = 17114605748,
    BeeSwarmSimulator = 1537690962,
    TowerOfHell = 1962086868,
    BreakIn2 = 13864661000,
    BloxFruits = 2753915549,
    BadBusiness = 3233893879,
    ProjectDelta = 7336302630 ,
    BladeBall = 13772394625,
    KohlsAdmHouse = 112420803,
    MM2 = 142823291,
    PhantomForces = 292439477
}
local Options = Fluent.Options

do --main gui
    if not table.find(supported, string.lower(exploitname)) then
        if not table.find(unsupported, string.lower(exploitname)) then
            Fluent:Notify({ Title = "Unverified executor", Content = getexecutorname().. " is an unverified executor.", SubContent = "We recommend using Arceus X or Solara.", Duration = 10})
        else
            Fluent:Notify({ Title = "Unsupported executor", Content = getexecutorname().. " is an unsupported executor.", SubContent = "We recommend using Arceus X or Solara.",Duration = 10})
        end
    end
    Tabs.Home:AddParagraph({
        Title = "Welcome to Clipflip GUI ".. buildtype.. ".",
        Content = "Enjoy your stay!"
    })
    Tabs.Home:AddParagraph({
        Title = "Your username is ".. lplayer.Name.. ".",
        Content = "User ID is ".. lplayer.UserId.. "."
    })
    Tabs.Home:AddParagraph({
        Title = "You are playing "..gameName.. ".",
        Content = "Game ID is "..game.PlaceId.."."
    })
    Tabs.Home:AddParagraph({
        Title = "You are using "..exploitname.. ".",
        Content = "It is level "..getthreadidentity().."."
    })
        Tabs.Home:AddButton({
        Title = "Auto-Select the script",
        Description = "Finds out what game you are playing to execute the right script",
        Callback = function()

if plcid == gmslct.Arsenal then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua"))()
elseif plcid == gmslct.Hoopz then
     loadstring(game:HttpGet(('https://paste.fo/raw/229d44565614'),true))()
elseif plcid == gmslct.NaturalDisasterSurvival then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubNaturalDisasterSurvival"))()
elseif plcid == gmslct.Retrostudio then
    loadstring(game:HttpGet('https://pastebin.com/raw/mruhg5iZ'))()
elseif plcid == gmslct.PM then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/kiwixcheat/000x999/main/projectmugetsu.lua'))()
elseif plcid == gmslct.counterblox then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fliskScript/jaran.vip/main/free.lua"))()
elseif plcid == gmslct.AnimePunchingSim2 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2703/Main/main/Mainscript", true))()
elseif plcid == gmslct.BeeSwarmSimulator then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
elseif plcid == gmslct.TowerOfHell or plcid == gmslct.BreakIn2 then
     loadstring(game:HttpGet("https://github.com/hello-n-bye/starry/blob/main/main.lua/?raw=true", true))()
elseif plcid == gmslct.BloxFruits then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nearz1/Milenio-X-Hub/main/Universal%20FE"))()
elseif plcid == gmslct.BadBusiness or plcid == gmslct.ProjectDelta then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/synprotectgui/synprotectgui/main/Loader.lua",true))()
elseif plcid == gmslct.BladeBall then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/Blade.lua"))() 
elseif plcid == KohlsAdmHouse then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/quivings/KAH/main/CMD%20v3.lua"))()
elseif plcid == MM2 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
elseif plcid == PhantomForces then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0d88df320112e490012f8c2d41538ecd.lua"))()
else
    Window:Dialog({Title = "Not found",Content = "We do not have a script for your game, you can try universal ones",Buttons = {{Title = "OK",Callback = function()end}}})
end
        end
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
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/vr.lua"))()
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
        Title = "Copy the game's ID to clipboard",
        Description = "",
        Callback = function()
            setclipboard(game.PlaceId)
        end
    })
    Tabs.UsefulTools:AddButton({
        Title = "Copy the game's JobID to clipboard",
        Description = "",
        Callback = function()
            setclipboard(game.JobId)
        end
    })
    Tabs.Admin:AddButton({
        Title = "QuirkyCMD",
        Description = "Keyless",
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
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLTD/sirius/request/source.lua"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "System Hub",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AHMEDPLPL/System-hub/main/System%20hub%20V2', true))()
end
    })
    Tabs.Game:AddButton({
        Title = "Natural Disaster Survival",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubNaturalDisasterSurvival"))()
        end
    })
    Tabs.Game:AddButton({
        Title = "RetroStudio",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/mruhg5iZ'))()
        end
    })
        Tabs.Game:AddButton({
        Title = "PM",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/kiwixcheat/000x999/main/projectmugetsu.lua'))()
        end
    })
    Tabs.Game:AddButton({
        Title = "CounterBlox",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fliskScript/jaran.vip/main/free.lua"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Anime Punching Simulator 2",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2703/Main/main/Mainscript", true))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Bee Swarm Simulator",
        Description = "Linkvertise Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Tower of Hell",
        Description = "Discord Key",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/hello-n-bye/starry/blob/main/main.lua/?raw=true", true))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Break in 2",
        Description = "Discord Key",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/hello-n-bye/starry/blob/main/main.lua/?raw=true", true))()
        end
    })
    Tabs.Game:AddButton({
        Title = "Blox Fruits",
        Description = "Linkvertise Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Nearz1/Milenio-X-Hub/main/Universal%20FE"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Hoopz Basketball",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://paste.fo/raw/229d44565614"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Arsenal",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua"))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Bad Business",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/synprotectgui/synprotectgui/main/Loader.lua",true))()
        end
    })
                Tabs.Game:AddButton({
        Title = "Project Delta",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/synprotectgui/synprotectgui/main/Loader.lua",true))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Blade Ball",
        Description = "Linkvertise Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/Blade.lua"))() 
        end
    })
        Tabs.Game:AddButton({
        Title = "Kohls Admin House NBC",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/quivings/KAH/main/CMD%20v3.lua"))()
        end
    })
        Tabs.Game:AddButton({
        Title = "Murder Mystery 2",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
        end
    })
            Tabs.Game:AddButton({
        Title = "Phantom Forces",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0d88df320112e490012f8c2d41538ecd.lua"))()
        end
    })
    Tabs.Admin:AddButton({
        Title = "Infinite Yield",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "Animation Logger",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Animation-Logger-13175"))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "Emoji Chat",
        Description = "keyless",
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
        Tabs.Spoof:AddButton({
        Title = "Spoof HWID",
        Description = "",
        Callback = function()
                writefile("spoofed.txt", string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..string.char(math.random(97,122))..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122))..math.random(1,9)..string.char(math.random(97,122)))
                local function SPOOFHWID_fake_script()
	            local script = Instance.new('LocalScript', SpooferInstance)
	            function gethwid()
                    return readfile("spoofed.txt")
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
            local function SPOOFHWID_fake_script()
	        local script = Instance.new('LocalScript', SpooferInstance)
	            function gethwid()
                    return Value
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
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/fuckusfm/infiniteyield-reborn/raw/master/source"))()
        end
    })
    Tabs.Univ:AddButton({
        Title = "DEX Explorer",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
    Tabs.Admin:AddButton({
        Title = "Nameless Admin",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
        end
    })
    Tabs.Aim:AddButton({
        Title = "Unnamed ESP",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "No Logging",
        Description = "Keyless",
        Callback = function()
            loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-NoLogging-13339'))()
        end
    })
    Tabs.Chat:AddButton({
        Title = "Vadrifts Chat Bypasser",
        Description = "Discord Key",
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
        Content = "|+| Skibidi"})
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
        Content = "|+| Public Release"
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
