ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-------------- Menu Discord ------------

RMenu.Add('discord', 'main', RageUI.CreateMenu("~y~Rdk Lien discord", "~y~RdkLien discord"))

Citizen.CreateThread(function()
    while true do 
        RageUI.IsVisible(RMenu:Get('discord', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~g~Rdk Lien discord ", "Lien du discord : Discord.gg/Exemple ;) ", {RightLabel = "~g~"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('pistolet')
                end
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)

----------------------------------- Open menu ----------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('discord', 'main'), not RageUI.Visible(RMenu:Get('discord', 'main')))
        end
    end
end) 
