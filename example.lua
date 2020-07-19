---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 20/12/2019 19:07
---

print("^1 RageUI - testing file is started. ^0")

RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "Undefined for using SetSubtitle"))
RMenu:Get('showcase', 'main'):SetSubtitle("RageUI Showcase")
RMenu:Get('showcase', 'main'):DisplayGlare(false);
RMenu:Get('showcase', 'main').Closed = function()
    print('Closed Showcase Menu')
end;
RMenu:Get('showcase', 'main').onIndexChange = function(Index)
    print(Index)
end

RMenu.Add('showcase', 'submenu', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "SubMenu", "RAGEUI"))
RMenu:Get('showcase', 'submenu').Closed = function()
    print('Closed Showcase Menu')
end;

RMenu:Get('showcase', 'submenu').onIndexChange = function(Index)
    print(Index)
end

Keys.Register('E', 'E', 'Open RageUI Showcase menu default.', function()
    RageUI.Visible(RMenu:Get('showcase', 'main'), not RageUI.Visible(RMenu:Get('showcase', 'main')))
end)

Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(1.0)

        RageUI.IsVisible(RMenu:Get('showcase', 'main'), function()
            for i = 1, 100 do
                RageUI.Item.Button('Basic Items', nil, {  }, true,   {
                    onHovered = function()

                    end,
                    onSelected = function()

                    end,
                    onActive = function()

                    end,
                })

            end
        end, function()
            RageUI.BoutonPanel('LeftText', 'RightText', 1)
        end)

        RageUI.IsVisible(RMenu:Get('showcase', 'submenu'), function()

            for i = 1, 10 do
                RageUI.Item.List("List Items", { "Yes", "No", "Maybe ?", "Money" }, 1, nil, {}, true, {
                    onListChange = function(Index, Items)

                    end,
                    onSelected = function(Index, Items)

                    end,
                    onHovered = function(Index, Items)

                    end
                })
            end

        end, function()

        end)


    end
end)
