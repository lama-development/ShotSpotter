fx_version 'bodacious'
game 'gta5'

name 'ShotSpotter'
description 'Gunshot detection and alert system.'
author 'ItzEndah'
version '1.0'


server_script "server.lua"
client_script {
	"client.lua",
	"config.lua"
}