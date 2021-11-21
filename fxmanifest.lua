fx_version 'bodacious'
game 'gta5'

name 'ShotSpotter'
description 'Gunshot detection and alert system.'
author 'Lama'
version '1.0.3'

server_script "server.lua"
client_script {
	"client.lua",
	"config.lua"
}
