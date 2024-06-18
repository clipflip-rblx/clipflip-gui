local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("ClipflipGUI V1", "RJTheme6")
local Tab = Window:NewTab("Executor Testing")
local Tab2 = Window:NewTab("Popular Scripts")
local Tab3 = Window:NewTab("Useful Tools")
local Tab4 = Window:NewTab("About")
local Section = Tab:NewSection("Executor Testing")
local Section2 = Tab2:NewSection("Popular Scripts")
local Section3 = Tab3:NewSection("Useful Tools")
local Section4 = Tab4:NewSection("Made by Clipflip")
local Section4a = Tab4:NewSection("You are using ClipflipGUI V1 Beta")
local Section4b = Tab4:NewSection("v1.0a")
local Section4c = Tab4:NewSection(identifyexecutor())
Section:NewButton("UNC Test", "Test your executor's capabilities", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
end)
Section:NewButton("Get Executor Level", "Find out your executor's level", function()
    printidentity()
end)
Section:NewButton("Get Executor Name", "Find out your executor's name", function()
   print(identifyexecutor())
end)
Section:NewButton("Vulnerability Test", "Test your executor's safety", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/test/main/executor_vuln_test.lua"))()
end)
Section2:NewButton("Infinite Yield Reborn", "Updated version of Infinite Yield with more features", function()
   loadstring(game:HttpGet("https://github.com/fuckusfm/infiniteyield-reborn/raw/master/source"))()
end)
Section2:NewButton("Nameless Admin", "Simple Admin Commands Script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)
Section2:NewButton("DEX", "Edit your game's environment like in ROBLOX Studio", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
Section2:NewButton("CLOVR", "Simple VR script", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/vr.lua"))()
end)
Section2:NewButton("Remote Spy", "Detect Remotes that are being fired", function()
  loadstring(game:HttpGetAsync("https://github.com/richie0866/remote-spy/releases/latest/download/RemoteSpy.lua"))()
end)
Section2:NewButton("Unnamed ESP", "Basic ESP for Roblox games", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
end)
Section3:NewButton("Save Instance", "Save the game's map to your computer", function()
   saveinstance()
end)
Section3:NewButton("Bypass Adonis", "Bypass the Adonis Anti-Cheat", function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/clipflip-exploits/bypass-adonis/main/source"))()
end)
Section3:NewButton("Fake Private Server", "Create a fake Private Server and teleport to it", function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/clipflip-exploits/fake-private-server/main/source"))()
end)
Section3:NewButton("Unlock FPS", "Unlocks your FPS", function()
   setfpscap(1000)
   print("FPS Unlocked")
end)
Section3:NewSlider("Set FPS Cap", "Change your FPS Cap", 500, 10, function(s)
    setfpscap(s)
end)
Section3:NewButton("Copy Game ID", "Copies your game ID to clipboard", function()
   setclipboard(game.PlaceId)
end)
print("Clipflip GUI successfully loaded")
