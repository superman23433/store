local db = {}

---@param identifier string
---@return number?
function db.GetPlayerCredists(identifier)
    local row = MySQL.single.await('SELECT `amount` FROM `player_credits` WHERE `identifier` = ? LIMIT 1', {
        identifier
    })

    if not row then
        return
    end

    return row.amount
end

---@param source string?
---@param identifier string
---@param amount number
---@return boolean
function db.GiveCredits(source, identifier, amount)
    local playerCredits = db.GetPlayerCredists(identifier)

    if playerCredits == nil then
        MySQL.insert.await('INSERT INTO `player_credits` (identifier, amount) VALUES (?, ?)', {
            identifier, amount
        })

        return false
    end

    local newAmount = playerCredits + amount

    if source then
        TriggerClientEvent("unity:client:updateCredits", source, newAmount)
    end

    MySQL.update.await('UPDATE player_credits SET amount = ? WHERE identifier = ?', {
        newAmount, identifier
    })

    return true
end

---@param source string
---@param identifier string
---@param amount number
---@return boolean
function db.RemovePlayerCredits(source, identifier, amount)
    local playerCredits = db.GetPlayerCredists(identifier)

    if playerCredits == nil then
        print(("[error] pelaajasta ei löytynyt dataa tietokannasta player_credits/%s"):format(identifier))
        return false
    end

    local newAmount = playerCredits - amount

    if newAmount < 0 then
        print(("[error] käyttäjällä ei ole tarpeeksi crediittejä, tarvitsee: %s, on: %s"):format(amount, playerCredits))
        return false
    end

    if source then
        ---@diagnostic disable-next-line: param-type-mismatch
        TriggerClientEvent("unity:client:updateCredits", source, newAmount)
    end

    MySQL.update.await('UPDATE player_credits SET amount = ? WHERE identifier = ?', {
        newAmount, identifier
    })
    ------------
    if amount > 300 then
        exports["scriptit"]:Logi({
            webhook =
            'https://discord.com/api/webhooks/1258514661935153262/Hou5Kmx3TwbTRqqyKDQHUWDiUyRZu4iml_lIzHezaXCb9HhdGNXPu_HxIgvzulg7QTxl',
            title = 'Pelaajan: ' .. GetPlayerName(source) .. ' kreduja poistettu',
            message = '**Ennen:** ' ..
                playerCredits ..
                '\n**Nyt: **' ..
                newAmount ..
                '\n**Poistettu: **' .. amount .. '\n\n' .. GetPlayerIdentifierByType(source, Config.Identifier),
            kuva = '',
            source = 'krediitit',
            event = 'Kredupoisto',
            tags = { '' },
            color = 4
        })
    end
    ------------
    return true
end

---@param license string
---@param citizenid string
---@param plate string
---@param mods string
---@param model string
---@return unknown
function db.InsertVehicle(license, citizenid, plate, mods, model)
    return MySQL.insert.await(
        "INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, fuel, engine, body, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        {
            license,
            citizenid,
            model,
            GetHashKey(model),
            mods,
            plate,
            100,
            1000,
            1000,
            1
        })
end

---@param source string
---@param identifier string
---@param color "red" | "green" | "black"
---@param number number
---@return unknown
function db.InsertRouletteResult(source, identifier, color, number)
    TriggerClientEvent("unity:roulette:history:add", source, { color = color, number = number })

    if Config.DevMode then
        return {}
    end

    return MySQL.insert.await(
        "INSERT INTO roulette_history (identifier, color, number) VALUES (?, ?, ?)",
        {
            identifier,
            color,
            number
        })
end

---@param identifier string
---@return unknown?
function db.GetPlayerRouletteHistory(identifier)
    if Config.DevMode then
        return {}
    end

    local response = MySQL.query.await('SELECT * FROM `roulette_history` WHERE `identifier` = ?', {
        identifier
    })

    return response or {}
end

---@param type "discordId" | "source"
---@param value string
---@return {name:string, avatar:string}
function db.GetDiscordData(type, value, utils)
    local discordId = type == "source" and GetPlayerIdentifierByType(value, "discord") or value

    if not discordId then
        return {
            success = false,
            name = type == "source" and GetPlayerName(value) or value or "Ei tiedossa",
            avatar = "https://wallpapers-clan.com/wp-content/uploads/2022/08/default-pfp-1.jpg"
        }
    end

    local discordUser = utils.getPlayerDiscordData("discordId", discordId)

    if discordUser.success then
        CreateThread(function()
            local row = MySQL.single.await(
                'SELECT `avatar`, `name` FROM `discord_users` WHERE `discordId` = ? LIMIT 1',
                {
                    discordId
                })

            if not row then
                MySQL.insert.await(
                    'INSERT INTO `discord_users` (discordId, name, avatar) VALUES (?, ?, ?)',
                    { discordId, discordUser.name, discordUser.avatar })

                if Config.Debug then
                    print(("[DEBUG] %s:%s discord data lisätty databaseen"):format(type, value))
                end
            else
                if (row.name ~= discordUser.name or row.avatar ~= discordUser.avatar) then
                    MySQL.update.await('UPDATE discord_users SET name = ?, avatar = ?  WHERE discordId = ?', {
                        discordUser.name, discordUser.avatar, discordId
                    })

                    if Config.Debug then
                        print(("[DEBUG] %s:%s discord data päivitetty databaseen"):format(type, value))
                    end
                end
            end
        end)

        return {
            success = true,
            name = discordUser.name,
            avatar = discordUser.avatar
        }
    end

    local row = MySQL.single.await(
        'SELECT `avatar`, `name` FROM `discord_users` WHERE `discordId` = ? LIMIT 1',
        {
            discordId
        })


    if not row then
        return {
            success = false,
            name = discordUser.name,
            avatar = discordUser.avatar
        }
    end

    return {
        success = false,
        name = row.name,
        avatar = row.avatar
    }
end

return db
