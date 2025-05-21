local uiOpen = false
local uiLoaded = false

RegisterNetEvent("unity:client:lisenssi")
AddEventHandler("unity:client:lisenssi", function(identifieri)
    ---@diagnostic disable-next-line: param-type-mismatch
    PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)

    if not Config.DevMode then
        exports.bulletin:SendAdvanced({
            message = "<font color='#3d3b3b'>CTRL + V\n~w~Lisenssisi: ~y~" .. identifieri,
            subject = 'Kopioitu leikepöydälle',
            title = "<font color='#91ff00' size='40'>Kauppa",
            icon = 'UNITY',
            position = 'bottom',
            timeout = '30000'
        })
    end

    lib.setClipboard(identifieri)
end)

--blackjack
RegisterNUICallback("blackjack:startGame", function(data, cb)
    local result = lib.callback.await("unity:server:blackjack:startGame", false, data.bet)
    if Config.Debug then
        print("start", json.encode(result, { indent = true }))
    end
    cb(result)
end)
RegisterNUICallback("blackjack:hit", function(data, cb)
    local result = lib.callback.await("unity:server:blackjack:hit", false)
    if Config.Debug then
        print("hit", json.encode(result, { indent = true }))
    end
    cb(result)
end)
RegisterNUICallback("blackjack:stand", function(data, cb)
    local result = lib.callback.await("unity:server:blackjack:stand", false)
    if Config.Debug then
        print("stand", json.encode(result, { indent = true }))
    end
    cb(result)
end)
--blackjack end

--mines
RegisterNUICallback("mines:start", function(body, resultCallback)
    local result = lib.callback.await("unity:mines:start", false, body.bet, body.mines)
    resultCallback(result)
end)

RegisterNUICallback("mines:click", function(body, resultCallback)
    local result = lib.callback.await("unity:mines:click", false, body.index)
    resultCallback(result)
end)

RegisterNUICallback("mines:cashout", function(_, resultCallback)
    local result = lib.callback.await("unity:mines:cashout", false)
    resultCallback(result)
end)

--case opening
RegisterNUICallback("caseOpening:start", function(body, resultCallback)
    local response = lib.callback.await("unity:server:caseopening:start", false, body.caseIndex + 1)
    resultCallback(response)
end)

RegisterNUICallback("caseOpening:end", function(body, resultCallback)
    lib.callback.await("unity:server:caseopening:end", false, body)
    resultCallback("ok")
end)

--coinflip
RegisterNetEvent("unity:client:coinflip:games", function(games)
    SendNUIMessage({
        action = "coinflip:games",
        data = msgpack.unpack(games)
    })
end)

RegisterNUICallback("coinflip:get", function(_, resultCallback)
    local result = lib.callback.await("unity:server:coiflip:get", false)
    resultCallback(result)
end)

RegisterNUICallback("coinflip:newGame", function(body, resultCallback)
    local result = lib.callback.await("unity:server:coiflip:newGame", false, body)
    resultCallback(result and "ok" or "error")
end)

RegisterNUICallback("coinflip:dissmiss", function(body, resultCallback)
    local result = lib.callback.await("unity:server:coiflip:dissmiss", false, body.id)
    resultCallback(result and "ok" or "error")
end)

RegisterNUICallback("coinflip:join", function(body, resultCallback)
    local result = lib.callback.await("unity:server:coiflip:join", false, body.id)
    resultCallback(result and "ok" or "error")
end)

RegisterNUICallback("coinflip:callBot", function(body, resultCallback)
    local result = lib.callback.await("unity:server:coiflip:callBot", false, body.id)
    resultCallback(result and "ok" or "error")
end)

-- roulette
RegisterNUICallback("roulette:start", function(body, resultCallback)
    local response = lib.callback.await("unity:roulette:start", false, body)
    resultCallback(response)
end)

RegisterNUICallback("roulette:history", function(_, resultCallback)
    local response = lib.callback.await("unity:roulette:history", false)
    resultCallback(response)
end)

RegisterNetEvent("unity:roulette:history:add", function(data)
    SendNUIMessage({
        action = "roulette:history:add",
        data = data
    })
end)

RegisterNUICallback("roulette:placeBet", function(body, resultCallback)
    local response = lib.callback.await("unity:roulette:placeBet", false, body)
    resultCallback(response)
end)

RegisterNUICallback("roulette:onSpinned", function(_, resultCallback)
    local wins = lib.callback.await("unity:roulette:onSpinned", false)
    resultCallback(wins)
end)

--shop
RegisterNUICallback("buy", function(body, resultCallback)
    local itemIndex = body.itemIndex
    local categoryIndex = body.categoryIndex

    local success = lib.callback.await("unity:server:buy", false, categoryIndex + 1, itemIndex + 1)

    resultCallback({
        status = success and "ok" or "error",
        message = success and "Osto onnistui" or "Osto epäonnistui"
    })
end)

RegisterNUICallback("uiLoaded", function(body, resultCallback)
    uiLoaded = true
    resultCallback("ok")
end)

RegisterNUICallback("close", function(body, resultCallback)
    SetNuiFocus(false, false)
    resultCallback("ok")
    TriggerScreenblurFadeOut(500)
    DisplayRadar(true)

    uiOpen = false
end)

CreateThread(function()
    while not LocalPlayer.state.isLoggedIn or not uiLoaded do Wait(100) end

    SendNUIMessage({
        action = "setup",
        data = {
            shopItems = Config.Shop,
            cases = Config.Cases,
            source = cache.serverId
        }
    })
end)

RegisterNetEvent("unity:client:updateCredits", function(credits)
    SendNUIMessage({
        action = "credits",
        data = math.floor(credits)
    })
end)

RegisterNetEvent("unity:client:coinflip:notify", function(notify)
    if uiOpen then
        SendNUIMessage({
            action = "coinflip:notify",
            data = notify
        })
    else
        lib.notify({
            title = "Coinflip",
            description = notify.message
        })
    end
end)

-- command
RegisterCommand("kauppa", function()
    if not uiLoaded or not LocalPlayer.state.isLoggedIn then
        return
    end

    local credits = lib.callback.await("unity:server:getCredits", false)

    SetNuiFocus(true, true)
    TriggerScreenblurFadeIn(500)
    DisplayRadar(false)

    uiOpen = true
    SendNUIMessage({
        action = "open",
        data = math.floor(credits)
    })
end, false)

lib.addKeybind({
    name = 'unitykauppa',
    description = 'Avaa krediitti systeemi',
    defaultKey = 'F6',
    onPressed = function()
        ExecuteCommand('kauppa')
    end
})
