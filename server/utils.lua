local utils = {}
local db = require "server.database"
local QBCore = exports['qb-core']:GetCoreObject()
local apiKey = GetConvar('steam_webApiKey')
local dcDebug = false

---@param source string
---@param identifierType? string
---@return string
utils.getIdentifier = function(source, identifierType)
    return GetPlayerIdentifierByType(source, identifierType or Config.Identifier)
end

---@param source number
---@param item { name: string, count:number, type: "vehicle" | "item" }
utils.giveItem = function(source, item)
    if Config.DevMode then
        print("Itemi annettu dev modessa")
        return true
    end
    tuotteehinta = item.price or '(Avattu)'

    if item.type == "vehicle" then
        local player = QBCore.Functions.GetPlayer(source)

        for _ = 1, item.count or 1 do
            ---@diagnostic disable-next-line: undefined-global
            local plate = lib.string.random("AAAA 111")
            db.InsertVehicle(player.PlayerData.license, player.PlayerData.citizenid, plate, '{}', item.name)
            --------------
            exports["scriptit"]:Logi({
                --webhook =
                --'https://discord.com/api/webhooks/1258514661935153262/Hou5Kmx3TwbTRqqDQHUWDiUyRZu4iml_lIzHezaXCb9HhdGNXPu_HxIgvzulg7QTxl',
                title = 'Pelaaja: ' .. GetPlayerName(source) .. ' sai ajoneuvon',
                message = '**Ajoneuvo:** ' ..
                    item.name ..
                    '\n**Kilpi:** ' ..
                    plate ..
                    '\n**Hinta:** ' ..
                    tuotteehinta ..
                    ' <:krediitti:1157355005196648509>\n\n' .. GetPlayerIdentifierByType(source, Config.Identifier),
                kuva = '',
                source = 'krediitit',
                event = 'AutoOsto',
                tags = { '' },
                color = 15844367
            })
            --------------
        end

        return true
    elseif item.type == "item" then
        exports.ox_inventory:AddItem(source, item.name, item.count)
        --------------
        exports["scriptit"]:Logi({
            --webhook =
            --'https://discord.com/api/webhooks/1258514661935153262/Hou5Kmx3TwbTRqqasDQHUWDiUyRZu4iml_lIzHezaXCb9HhdGNXPu_HxIgvzulg7QTxl',
            title = 'Pelaaja: ' .. GetPlayerName(source) .. ' sai asian',
            message = '**Itemi:** ' ..
                item.name ..
                '\n**Määrä:** ' ..
                item.count ..
                '\n**Hinta:** ' ..
                tuotteehinta .. ' <:krediitti:1157355005196648509>\n\n' ..
                GetPlayerIdentifierByType(source, Config.Identifier),
            kuva = '',
            source = 'krediitit',
            event = 'ItemiOsto',
            tags = { '' },
            color = 11027200
        })
        --------------
        return true
    end

    return false
end

-- discord start
local discordUsers = {}
local botToken = GetConvar("unity:bot", "") -- LAITA BOTN TOKENI SERVER.cfgeehe

if not botToken or #botToken < 10 then
    print("[ERROR] Settaas unity:bot server.cfgeehe oikein")
end

local function splitString(str, sep)
    if not str then
        return nil
    end

    local result = {}
    local regex = ("([^%s]+)"):format(sep)
    for each in str:gmatch(regex) do
        table.insert(result, each)
    end

    return result
end

local defaultAvatar = "https://wallpapers-clan.com/wp-content/uploads/2022/08/default-pfp-1.jpg"

---@param type "source" | "discordId"
---@param value string
---@return { avatar: string, name: string, success:false }
local function getDefault(type, value)
    return {
        name = type == "source" and GetPlayerName(value) or value,
        avatar =
            defaultAvatar,
        success = false,
    }
end

---@param typeZ "source" | "discordId"
---@param value string
---@return { avatar: string, name: string, success:boolean }
utils.getPlayerDiscordData = function(typeZ, value)
    local discordId = (type == "source" and utils.getIdentifier(value, "discord") or value)
    if not discordId or type(discordId) ~= "string" then
        if dcDebug then
            print("discordia ei ole linkattu", typeZ, value)
        end

        return getDefault(typeZ, value)
    end

    local splittedDiscordId = splitString(discordId)[2]
    if not splittedDiscordId then
        if dcDebug then
            print("discordId on virheellinen", splittedDiscordId)
        end

        return getDefault(typeZ, value)
    end

    local result = promise.new()
    local splittedDiscordId = string.match(splittedDiscordId, ":(.+)$")
    local discordUser = discordUsers[splittedDiscordId]

    if not discordUser then
        if dcDebug then
            print("haetaan discord useria idllä:", splittedDiscordId)
        end

        
        PerformHttpRequest(("https://discord.com/api/v10/users/%s"):format(splittedDiscordId), function(status, body)
            if status == 200 then
                local bodyJson = json.decode(body) or body
        
                if bodyJson then
                    if dcDebug then
                        print("discord useri", bodyJson.global_name, bodyJson.id, bodyJson.avatar)
                    end
        
                    -- Determine avatar URL
                    local avatarURL
                    if bodyJson.avatar then
                        local isGif = bodyJson.avatar:sub(1, 2) == "a_"
                        local extension = isGif and "gif" or "webp"
                        avatarURL = ("https://cdn.discordapp.com/avatars/%s/%s.%s"):format(bodyJson.id, bodyJson.avatar, extension)
                    else
                        avatarURL = defaultAvatar
                    end
        
                    local data = {
                        success = true,
                        name = bodyJson.global_name or bodyJson.username or typeZ == "source" and GetPlayerName(value) or value,
                        avatar = avatarURL
                    }
        
                    discordUsers[splittedDiscordId] = data
                    result:resolve(data)
                else
                    if dcDebug then
                        print("discord useria ei voitu hakee bodyJson:", json.encode(bodyJson), type(bodyJson))
                    end
        
                    result:resolve(getDefault(typeZ, value))
                end
            else
                if dcDebug then
                    print("discord useria ei voitu hakee status:", status, body)
                end
        
                result:resolve(getDefault(typeZ, value))
            end
        end, "GET", nil, {
            ["Accept-Encoding"] = "application/json",
            ["Content-Type"] = "application/json",
            ["Authorization"] = ("Bot %s"):format(botToken),
        })
    else
        if dcDebug then
            print("discordi oli jo", json.encode(discordUser))
        end

        result:resolve(discordUser)
    end

    local awaitedResult = Citizen.Await(result)

    if dcDebug then
        print("discord result:", json.encode(awaitedResult))
    end

    return awaitedResult
end
--discord end

return utils
