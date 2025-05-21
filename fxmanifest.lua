fx_version 'cerulean'
game 'gta5'

author "ice-dev"

shared_scripts {
    "config.lua",
    "@ox_lib/init.lua",
}

client_script "client/client.lua"
server_scripts {
    "server/casino/casino.js",
    "server/server.lua",
    "server/casino/*.lua",
    "@oxmysql/lib/MySQL.lua",
}

ui_page "web/build/index.html"

files {
    "server/utils.lua",
    "server/database.lua",

    "web/build/index.html",
    "web/build/**/*",
}

lua54 'yes'
