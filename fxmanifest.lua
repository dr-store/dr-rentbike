fx_version   'cerulean'
game         'gta5'

name         'dr-rentbike'
author       'DuDu'
version      '1.0.0'

lua54 'yes'

shared_script '@ox_lib/init.lua'

client_scripts {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'config.lua',
	'server/main.lua'
}

dependencies {
	'ox_lib',
	'ox_target'
}
