--Made by : https://v3rmillion.net/member.php?action=profile&uid=1319095

local library = loadstring(game:HttpGet("otherfilerawlink", true))()

----Creates window with a title(Neccesary)
local window = library:createWindow('Neet Title')
----Creates the first page with a mini title
local mainPage = window:createPage('Neet Mini Title')
---- Creating a page to later be directed to with a mod button
local testPage = window:createPage('Neet test Page')

-----Example of a toggle feature
local toggle = false --- Change toggle to whatever you want but make sure you edit the three below
mainPage:addMod('Toggle [OFF]', function(self)
   if self.Checked then
       self:setName('Toggle [ON]')
        toggle = true ------------ Edit this to be the same as the variable name above ^
   else
       self:setName('Toggle [OFF]')
       toggle = false ------------ Edit this to be the same as the variable name above ^^
      end
   end
end)
spawn(function()
   while wait() do
       if Toggle then ------------ Edit this to be the same as the variable name above ^
           print('Toggled!') --- Script goes here
       end
   end
end)


----- Example of a regular button
mainPage:addMod('Print hi', function(self)
print('hi')
end)


---- Creating a button that directs to a new page
mainPage:addMod('Test Page', nil, testPage, true)
