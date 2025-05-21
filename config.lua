Config = {}

Config.Identifier = "steam"

Config.DevMode = false
Config.Debug = false
Config.DCDebug = false

-- color = bet x win
Config.Roulette = {
    ["red"] = 2,
    ["green"] = 14,
    ["black"] = 2
}

Config.Shop = {
    {
        categoryLabel = "Ajoneuvot",
        items = {
            
            {
                name = "tbillon",
                label = "Tbillon",
                price = 60000,
                count = 1,
                type = "vehicle",
                image = "images/tbillon.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Yksi nopeimmista autoista! \n Auto on lore versio tourbillon bugatista",
                    images = { 
                        "images/tbillon.png",
                        "https://unityx.fi/fivem/autot/tbillon/tbillondoors.png",
                        "https://unityx.fi/fivem/autot/tbillon/1.png",
                        "https://unityx.fi/fivem/autot/tbillon/2.png",
                        "https://unityx.fi/fivem/autot/tbillon/3.png",
                        "https://unityx.fi/fivem/autot/tbillon/4.png",
                        "https://unityx.fi/fivem/autot/tbillon/tbillonmotion.png"
                        }
                },
                tag = {
                    text = "Uusi",
                    color = "#28bf58"
                }
            },
            {
                name = "gstetrk1",
                label = "CyberBeast",
                price = 18000,
                count = 1,
                type = "vehicle",
                image = "images/gstetrk1.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Kyseenalainen auto MUTTA ainakin tehokas ja silmäänpistävä!   \nAutossa on myös /autopilotti  \nAuto kestää muutaman räjähdyksen  \n Auto on lore versio cybertrukista",
                    images = { 
                    "images/gstetrk1.png",
                    "https://unityx.fi/fivem/autot/cyberbeast/cyberbeastmotionpreview.png",
                    "https://unityx.fi/fivem/autot/cyberbeast/1.png",
                    "https://unityx.fi/fivem/autot/cyberbeast/2.png",
                    "https://unityx.fi/fivem/autot/cyberbeast/3.png",
                    "https://unityx.fi/fivem/autot/cyberbeast/4.png"
                    }
                },
                tag = {
                    text = "Uusi",
                    color = "#28bf58"
                }
            },
            {
                name = "sentinelsg4",
                label = "E46",
                price = 14000,
                count = 1,
                type = "vehicle",
                image = "images/sentinelsg4.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## E46 \nKunnon jonne vekotin. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/qsskt9dkkbzb.png", "https://r2.fivemanage.com/pub/f3up1zs3155r.png", "https://r2.fivemanage.com/pub/dkpyg23a2drp.png", "https://r2.fivemanage.com/pub/f25issk5xflf.png" }
                },
            },
            {
                name = "schlagenstr",
                label = "Str Gtr",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/schlagenstr.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## STR GTR \nRaju kilpuri. Tätä autoa saa Hieman tuunattua. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/60iwg9nh3mh8.png", "https://r2.fivemanage.com/pub/j0q6yp7ujz7n.png", "https://r2.fivemanage.com/pub/n1eoxbwli91f.png" }
                },
            },
            {
                name = "buffalowb",
                label = "Chärger",
                price = 17000,
                count = 1,
                type = "vehicle",
                image = "images/buffalowb.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Chärger \nGangstan lemppari. Tätä autoa saa PALJON tuunattua. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/dt8yw7m2v1vt.png", "https://r2.fivemanage.com/pub/f93ze9829upj.png", "https://r2.fivemanage.com/pub/wj7z9rg6piys.png", "https://r2.fivemanage.com/pub/f2965ij96oyb.png" }
                },
            },
            {
                name = "gstjub1",
                label = "Rolls",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/gstjub1.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Rolls \nRikkaiden katumaasturi. Tähän autoon saa vaihettua spoileria ja konepeltiä. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/l1n1i1t09ys4.png", "https://r2.fivemanage.com/pub/3bxkzu0h40mu.png", "https://r2.fivemanage.com/pub/eepdx12gjdgq.png", "https://r2.fivemanage.com/pub/onmitzlrnhu2.png" }
                },
            },
            {
                name = "22m5",
                label = "ÄM-5",
                price = 16000,
                count = 1,
                type = "vehicle",
                image = "images/22m5.png",
            },
            {
                name = "m720",
                label = "720",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/m720.png",
            },
            {
                name = "24model3",
                label = "Sähköauto",
                price = 18000,
                count = 1,
                type = "vehicle",
                image = "images/24model3.png",
            },
            {
                name = "hellenstorm",
                label = "Raptori",
                price = 14000,
                count = 1,
                type = "vehicle",
                image = "images/hellenstorm.png",
            },
            {
                name = "c7",
                label = "Korvetti",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/c7.png",
            },
            {
                name = "trhawk",
                label = "Hellhawk",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/trhawk.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Hellhawk \nKatumaasturi isolla koneella. Tätä autoa saa hieman tuunattua. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/bwlzq3ebj8qx.png", "https://r2.fivemanage.com/pub/y8bdj4v6bnaf.png", "https://r2.fivemanage.com/pub/opaohrmvi4kx.png", "https://r2.fivemanage.com/pub/6apmquxgdym8.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "osirisr",
                label = "Hyara",
                price = 38000,
                count = 1,
                type = "vehicle",
                image = "images/osirisr.png",
                -- buttonText = "Katso",
                -- info = {
                --     title = "# Markdown",
                --     description = "# Markdown",
                --     images = { "images/agerars.png", "images/chiron17.png" }
                -- },
                -- tag = {
                --     text = "Uusi",
                --     color = "#39a122"
                -- }
            },
            {
                name = "stratumc",
                label = "Stratum C",
                price = 12000,
                count = 1,
                type = "vehicle",
                image = "images/stratumc.png",
            },
            {
                name = "v60burger",
                label = "v60",
                price = 12000,
                count = 1,
                type = "vehicle",
                image = "images/v60burger.png",
            },
            {
                name = "bmwg07",
                label = "X-7",
                price = 14000,
                count = 1,
                type = "vehicle",
                image = "images/bmwg07.png",
            },
            {
                name = "agerars",
                label = "AgeraR",
                price = 45000,
                count = 1,
                type = "vehicle",
                image = "images/agerars.png",
            },
            {
                name = "m3",
                label = "ÄM-3",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/m3.png",
            },
            {
                name = "m3e36",
                label = "E36",
                price = 9500,
                count = 1,
                type = "vehicle",
                image = "images/m3e36.png",
            },
            {
                name = "mgt",
                label = "Musse",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/mgt.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Musse \nAmeriikan muskelia saatana. Tähän autoon saa paljon ulkoista tuunausta. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/4c04asvkb26s.png", "https://r2.fivemanage.com/pub/qgm3vccpe2sq.png", "https://r2.fivemanage.com/pub/j8dd3nc0ppyl.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "demon",
                label = "Hellfire",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/demon.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Hellfire \nAmeriikan muskelia saatana. Tähän autoon saa paljon ulkoista tuunausta. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/wo9sgndp1rsv.png", "https://r2.fivemanage.com/pub/t9p6vtfrrxid.png", "https://r2.fivemanage.com/pub/cyyowkrklhe3.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "exc250sm",
                label = "Kotari",
                price = 5000,
                count = 1,
                type = "vehicle",
                image = "images/exc250sm.png",
            },
            {
                name = "Skyline",
                label = "Skylle",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/Skyline.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "THE GODZILLA! \n Auto on lore versio r34",
                    images = { "images/Skyline.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "e500",
                label = "E500",
                price = 10000,
                count = 1,
                type = "vehicle",
                image = "images/e500.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Kyllä nyt o löylyä saatana! \n Auto on lore versio e500 mersusta",
                    images = { "https://r2.fivemanage.com/pub/6o9tv4honrwz.webp", "https://r2.fivemanage.com/pub/qbxrvgs8wn0r.jpeg" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "m4f82",
                label = "ÄM-4",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/m4f82.png",
            },
            {
                name = "c63w205",
                label = "C-63",
                price = 18000,
                count = 1,
                type = "vehicle",
                image = "images/c63w205.png",
            },
            {
                name = "derbisenda",
                label = "Derbi",
                price = 5000,
                count = 1,
                type = "vehicle",
                image = "images/derbisenda.png",
            },
            {
                name = "190e",
                label = "190",
                price = 12000,
                count = 1,
                type = "vehicle",
                image = "images/190e.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## 190 \nLEGENDAARISTA!. Tähän autoon saa semi paljon ulkoista tuunausta. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/btftwt8eo8en.png", "https://r2.fivemanage.com/pub/t7j9p4ibtl8d.png", "https://r2.fivemanage.com/pub/6kla2gyv1l7n.png", "https://r2.fivemanage.com/pub/zef6alqfun6j.png", "https://r2.fivemanage.com/pub/elve9lz6obu6.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "kurkkumopo",
                label = "Kurkkumopo",
                price = 3000,
                count = 1,
                type = "vehicle",
                image = "images/kurkkumopo.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## Kurkkumopo \nLegendaarinen kurkkumopo. Tähän voi vaihtaa myös vanteita tai ottaa sarvet pois. *'Ajettavuudeltaan ei mahtava :DD'*",
                    images = { "https://r2.fivemanage.com/pub/j9u3cpqgakj2.png", "https://r2.fivemanage.com/pub/by2f1ru170ok.png", "https://r2.fivemanage.com/pub/22uduy3u506o.png", "https://r2.fivemanage.com/pub/ml1boyn0o71f.png" }
                },
            },
            {
                name = "hmonkey",
                label = "Monkey",
                price = 5000,
                count = 1,
                type = "vehicle",
                image = "images/hmonkey.png",
            },
            {
                name = "rmodgt63",
                label = "GT-63",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/rmodgt63.png",
            },
            {
                name = "r35",
                label = "GTÄRRÄ",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/r35.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Nykypäivän jdm! \n Auto on lore versio r35 gtr",
                    images = { "images/r35.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "rs6avant20",
                label = "RS-6",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/rs6avant20.png",
            },
            {
                name = "488gtb",
                label = "FEFE",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/488gtb.png",
            },
            {
                name = "m2f22",
                label = "ÄM-2",
                price = 15000,
                count = 1,
                type = "vehicle",
                image = "images/m2f22.png",
            },
            {
                name = "senna",
                label = "Senno",
                price = 32000,
                count = 1,
                type = "vehicle",
                image = "images/senna.png",
            },
            {
                name = "r8h",
                label = "WBR8",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/r8h.png",
            },
            {
                name = "pgt3",
                label = "GT3",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/pgt3.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## GT3RS \nYksi suosituimmista autoista täällä GT3RS. Tähän autoon saa paljon ulkoista tuunausta. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/zln44vck5wq7.png", "https://r2.fivemanage.com/pub/j1h3iigl6rzc.png", "https://r2.fivemanage.com/pub/shz4yoqkw5lw.png", "https://r2.fivemanage.com/pub/lxn668r3obfp.png", "https://r2.fivemanage.com/pub/8rtju9cd3ull.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "chiron17",
                label = "Chirun",
                price = 38000,
                count = 1,
                type = "vehicle",
                image = "images/chiron17.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Yksi nopeimmista autoista! \n Auto on lore versio bugatista",
                    images = { "images/chiron17.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "tempesta2",
                label = "Huracän",
                price = 19000,
                count = 1,
                type = "vehicle",
                image = "images/tempesta2.png",
            },
            {
                name = "a80",
                label = "Zupra",
                price = 14000,
                count = 1,
                type = "vehicle",
                image = "images/a80.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Jonnejen lemppari! \n Auto on lore versio suprasta",
                    images = { "images/a80.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "gt86",
                label = "86",
                price = 8500,
                count = 1,
                type = "vehicle",
                image = "images/gt86.png",
                tag = {
                    text = "Suosittu",
                    color = "#229ba1"
                }
            },
            {
                name = "22g63",
                label = "GMese",
                price = 12000,
                count = 1,
                type = "vehicle",
                image = "images/22g63.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "## GMese \nAbsoluuttinen alffa mobiili. Tähän autoon saa paljon tuunauksia. \n*Jokainen auto täällä on loreversioita irl autoista*",
                    images = { "https://r2.fivemanage.com/pub/qcpaaai8kr6q.png", "https://r2.fivemanage.com/pub/mc393opvdt1h.png", "https://r2.fivemanage.com/pub/08tk8d5y88t9.png", "https://r2.fivemanage.com/pub/w0153fjhbrym.png", "https://r2.fivemanage.com/pub/znzcb85w5ij2.png" }
                },
                tag = {
                    text = "Uusittu",
                    color = "#59a122"
                }
            },
            {
                name = "tummapaahto",
                label = "Minicrossi",
                price = 5000,
                count = 1,
                type = "vehicle",
                image = "images/tummapaahto.png",
            },
        }
    },
    {
        categoryLabel = "Rahat",
        items = {
            {
                name = "cash",
                label = "10 000€",
                price = 800,
                count = 10000,
                type = "item",
                image = "images/money10000.png",
            },
            {
                name = "cash",
                label = "25 000€",
                price = 2000,
                count = 25000,
                type = "item",
                image = "images/money25000.png",
            },
            {
                name = "cash",
                label = "100 000€",
                price = 7000,
                count = 100000,
                type = "item",
                image = "images/money100000.png",
            },
            {
                name = "cash",
                label = "1 000 000€",
                price = 32000,
                count = 1000000,
                type = "item",
                image = "images/money1m.png",
            },
        }
    },
    {
        categoryLabel = "Tavarat",
        items = {
            {
                name = "xxcustomkilpixx",
                label = "Erikoiskilpi",
                price = 14000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/xxcustomkilpixx.png",
                buttonText = "Katso",
                info = {
                    title = "",
                    description = "Tällä esineellä voit vaihtaa autoosi uniikin rekisteri tunnuksen",
                    images = { "" }
                },
                tag = {
                    text = "Uusi",
                    color = "#28bf58"
                }
            },
            {
                name = "usb_green",
                label = "Vihreä USB",
                price = 5000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/usb_green.png",
            },
            {
                name = "nos",
                label = "NOS Pullo",
                price = 500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/nos.png",
            },
            {
                name = "thermite",
                label = "Thermite",
                price = 3500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/thermite.png",
            },
            {
                name = "cctv_faulty",
                label = "CCTV Kamera",
                price = 3000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/cctv_faulty.png",
            },
            {
                name = "aarrelapio",
                label = "Aarrelapio",
                price = 8000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/aarrelapio.png",
            },
            {
                name = "bandage",
                label = "Sideharso",
                price = 200,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/bandage.png",
            },
            {
                name = "nalle",
                label = "Nalle",
                price = 100,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/nalle.png",
            },
            {
                name = "boostingtablet",
                label = "BoostausTabletti",
                price = 5000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/boostingtablet.png",
            },
            {
                name = "rc-bandito",
                label = "Rc auto",
                price = 1000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/rc-bandito.png",
            },
            {
                name = "nuuskakiekko",
                label = "Nuuskakiekko",
                price = 250,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/nuuskakiekko.png",
            },
        }
    },
    {
        categoryLabel = "Aseet",
        items = {
            {
                name = "ammo-9",
                label = "100x Pistoolin kutia",
                price = 1000,
                count = 100,
                type = "item",
                image = "nui://ox_inventory/web/images/ammo-9.png",
            },
            {
                name = "ammo-rifle",
                label = "100x Rynkyn kutia",
                price = 2000,
                count = 100,
                type = "item",
                image = "nui://ox_inventory/web/images/ammo-rifle.png",
            },
            {
                name = "WEAPON_KNIFE",
                label = "Puukko",
                price = 2000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_KNIFE.png",
            },
            {
                name = "WEAPON_KARAMBIT",
                label = "Karambit",
                price = 2500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_KARAMBIT.png",
            },
            {
                name = "WEAPON_SLEDGEHAMMER",
                label = "Leka",
                price = 2500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_SLEDGEHAMMER.png",
            },
            {
                name = "WEAPON_KATANA",
                label = "Katana",
                price = 2500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_KATANA.png",
            },
            {
                name = "WEAPON_VINTAGEPISTOL",
                label = "Vintage Pistooli",
                price = 3500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_VINTAGEPISTOL.png",
            },
            {
                name = "WEAPON_PISTOL_MK2",
                label = "Pistooli MK2",
                price = 3500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_PISTOL_MK2.png",
            },
            {
                name = "WEAPON_PISTOLXM3",
                label = "WM 29",
                price = 3500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_PISTOLXM3.png",
            },
            {
                name = "WEAPON_SNSPISTOL_MK2",
                label = "SNS Pistooli MK2",
                price = 3500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_SNSPISTOL_MK2.png",
            },
            {
                name = "WEAPON_MAC10",
                label = "MAC10",
                price = 5000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_MAC10.png",
            },
            {
                name = "WEAPON_UZI",
                label = "UZI",
                price = 5000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_UZI.png",
            },
            {
                name = "WEAPON_TECPISTOL",
                label = "Tactical SMG",
                price = 7500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_TECPISTOL.png",
            },
            {
                name = "WEAPON_M70",
                label = "M70",
                price = 8000,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_M70.png",
            },
            {
                name = "WEAPON_ASSAULTRIFLE",
                label = "AK-47",
                price = 9500,
                count = 1,
                type = "item",
                image = "nui://ox_inventory/web/images/WEAPON_ASSAULTRIFLE.png",
            },
        }
    },
}


--[[
    rarities:
        common,
        uncommon,
        rare,
        mythical,
        legendary,
        ancient,
        exceedingly_rare,
        immortal

    types:
        item,
        vehicle
]]
Config.Cases = {
    {
        name = "KusiBoxi",
        image = "images/casekusirulla.png",
        price = 500,
        items = {
            {
                label = "Silvia",
                name = "roxanne",
                image = "images/roxanne.png",
                sellPrice = 20000, -- shop price: only case
                chance = 0.30,
                rarity = "immortal",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "Chiron",
                name = "chiron17",
                image = "images/chiron17.png",
                sellPrice = 15000, -- shop price: 38000
                chance = 0.40,
                rarity = "exceedingly_rare",
                showChance = false,
                count = 1,
                type = "vehicle",
            },
            {
                label = "Skyline",
                name = "Skyline",
                image = "images/Skyline.png",
                sellPrice = 10000, -- shop price: 19000
                chance = 0.80,
                rarity = "exceedingly_rare",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "G63",
                name = "22g63",
                image = "images/22g63.png",
                sellPrice = 10000, -- shop price: 19000
                chance = 1.20,
                rarity = "exceedingly_rare",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "e500",
                name = "e500",
                image = "images/e500.png",
                sellPrice = 7000, -- shop price: 15000
                chance = 2.20,
                rarity = "exceedingly_rare",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "GT86",
                name = "gt86",
                image = "images/gt86.png",
                sellPrice = 3000, -- shop price: 8500
                chance = 2.20,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "PV",
                name = "pv",
                image = "images/pv.png",
                sellPrice = 2500, -- shop price: -
                chance = 1.00,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "vehicle"
            }, {
            label = "Monkey",
            name = "hmonkey",
            image = "images/hmonkey.png",
            sellPrice = 2500, -- shop price: -
            chance = 2.80,
            rarity = "ancient",
            showChance = false,
            count = 1,
            type = "vehicle"
        },
            {
                label = "Kurkkumopo",
                name = "kurkkumopo",
                image = "images/kurkkumopo.png",
                sellPrice = 1000, -- shop price: 3000
                chance = 3.00,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "Pisla MK2",
                name = "WEAPON_PISTOL_MK2",
                image = "nui://ox_inventory/web/images/WEAPON_PISTOL_MK2.png",
                sellPrice = 1500, -- shop price: 5000
                chance = 4.00,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Leka",
                name = "WEAPON_SLEDGEHAMMER",
                image = "nui://ox_inventory/web/images/WEAPON_SLEDGEHAMMER.png",
                sellPrice = 600, -- shop price: 2700
                chance = 5.30,
                rarity = "legendary",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Boostingtabletti",
                name = "boostingtablet",
                image = "nui://ox_inventory/web/images/boostingtablet.png",
                sellPrice = 600, -- shop price: 2500
                chance = 7.20,
                rarity = "legendary",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "25 000€",
                name = "cash",
                image = "images/money25000.png",
                sellPrice = 500, -- shop price: 2000
                chance = 8.70,
                rarity = "mythical",
                showChance = false,
                count = 25000,
                type = "item"
            },
            {
                label = "10 000€",
                name = "cash",
                image = "images/money10000.png",
                sellPrice = 200, -- shop price: 800
                chance = 11.51,
                rarity = "rare",
                showChance = false,
                count = 10000,
                type = "item"
            },
            {
                label = "Luotiliivi",
                name = "armor",
                image = "nui://ox_inventory/web/images/armor.png",
                sellPrice = 100, -- shop price: not listed since its kinda useless
                chance = 11.87,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Oxy",
                name = "armor",
                image = "nui://ox_inventory/web/images/oxy.png",
                sellPrice = 50, -- shop price: not listed since its kinda useless
                chance = 15.09,
                rarity = "uncommon",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Paska",
                name = "paska",
                image = "nui://ox_inventory/web/images/paska.png",
                sellPrice = 50, -- shop price: not listed since its kinda useless
                chance = 21.44,
                rarity = "common",
                showChance = false,
                count = 1,
                type = "item"
            },
        }
    },

    {
        name = "UnitySpecial",
        image = "images/caseunity.png",
        price = 1000,
        items = {
            {
                label = "Mönnäri 2.0",
                name = "duness",
                image = "images/duness.png",
                sellPrice = 20000,
                chance = 5.00,
                rarity = "immortal",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "Mönnäri 1.0",
                name = "burritopw",
                image = "images/burritopw.png",
                sellPrice = 10000,
                chance = 5.00,
                rarity = "immortal",
                showChance = false,
                count = 1,
                type = "vehicle"
            },
            {
                label = "Paska",
                name = "paska",
                image = "nui://ox_inventory/web/images/paska.png",
                sellPrice = 50,
                chance = 90.00,
                rarity = "common",
                showChance = false,
                count = 1,
                type = "item"
            }
        }

    },


    {
        name = "LaseCase",
        image = "images/lasecase.png",
        price = 2500,
        items = {
            {
                label = "AK47",
                name = "weapon_assaultrifle",
                image = "nui://ox_inventory/web/images/WEAPON_ASSAULTRIFLE.png",
                sellPrice = 6000,
                chance = 1,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "M70",
                name = "weapon_m70",
                image = "nui://ox_inventory/web/images/WEAPON_M70.png",
                sellPrice = 4000,
                chance = 2,
                rarity = "ancient",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "PDW",
                name = "WEAPON_COMBATPDW",
                image = "nui://ox_inventory/web/images/WEAPON_COMBATPDW.png",
                sellPrice = 1000,
                chance = 2.5,
                rarity = "legendary",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "UZI",
                name = "WEAPON_UZI",
                image = "nui://ox_inventory/web/images/WEAPON_UZI.png",
                sellPrice = 1000,
                chance = 3,
                rarity = "legendary",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "MAC-10",
                name = "WEAPON_MAC10",
                image = "nui://ox_inventory/web/images/WEAPON_MAC10.png",
                sellPrice = 900,
                chance = 3,
                rarity = "legendary",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Pistol MK2",
                name = "WEAPON_PISTOL_MK2",
                image = "nui://ox_inventory/web/images/WEAPON_PISTOL_MK2.png",
                sellPrice = 500,
                chance = 5,
                rarity = "mythical",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Vintage",
                name = "WEAPON_VINTAGEPISTOL",
                image = "nui://ox_inventory/web/images/WEAPON_VINTAGEPISTOL.png",
                sellPrice = 500,
                chance = 5,
                rarity = "mythical",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Pistol 50",
                name = "WEAPON_PISTOL50",
                image = "nui://ox_inventory/web/images/WEAPON_PISTOL50.png",
                sellPrice = 500,
                chance = 5,
                rarity = "mythical",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "FNX45",
                name = "WEAPON_FNX45",
                image = "nui://ox_inventory/web/images/WEAPON_FNX45.png",
                sellPrice = 500,
                chance = 6,
                rarity = "mythical",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "M1911",
                name = "WEAPON_M1911",
                image = "nui://ox_inventory/web/images/WEAPON_M1911.png",
                sellPrice = 500,
                chance = 6,
                rarity = "mythical",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Katana",
                name = "WEAPON_KATANA",
                image = "nui://ox_inventory/web/images/WEAPON_KATANA.png",
                sellPrice = 700,
                chance = 8,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Karambit",
                name = "WEAPON_KARAMBIT",
                image = "nui://ox_inventory/web/images/WEAPON_KARAMBIT.png",
                sellPrice = 700,
                chance = 10,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Leka",
                name = "WEAPON_SLEDGEHAMMER",
                image = "nui://ox_inventory/web/images/WEAPON_SLEDGEHAMMER.png",
                sellPrice = 300,
                chance = 15,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Puukko",
                name = "WEAPON_KNIFE",
                image = "nui://ox_inventory/web/images/WEAPON_KNIFE.png",
                sellPrice = 300,
                chance = 20,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Mora",
                name = "WEAPON_DAGGER",
                image = "nui://ox_inventory/web/images/WEAPON_DAGGER.png",
                sellPrice = 200,
                chance = 25,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Maila",
                name = "WEAPON_BAT",
                image = "nui://ox_inventory/web/images/WEAPON_BAT.png",
                sellPrice = 200,
                chance = 30,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "Sorkkarauta",
                name = "WEAPON_CROWBAR",
                image = "nui://ox_inventory/web/images/WEAPON_CROWBAR.png",
                sellPrice = 200,
                chance = 30,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            },
            {
                label = "GolfMaila",
                name = "WEAPON_GOLFCLUB",
                image = "nui://ox_inventory/web/images/WEAPON_GOLFCLUB.png",
                sellPrice = 200,
                chance = 30,
                rarity = "rare",
                showChance = false,
                count = 1,
                type = "item"
            }
        }

    }


}
