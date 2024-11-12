fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

author 'VORP @outsider'
name 'vorp_billing'
description 'Vorp billing system'

shared_scripts { 'config.lua', 'languages/translations.lua' }
client_script 'client/main.lua'
server_scripts { 'server/main.lua', 'languages/logs.lua' }

version '0.1'
vorp_checker 'yes'
vorp_name '^4Resource version Check^3'
vorp_github 'https://github.com/VORPCORE/vorp_billing'
