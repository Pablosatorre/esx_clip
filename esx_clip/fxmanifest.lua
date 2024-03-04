fx_version 'adamant'
game 'gta5'

author 'pabio'
description 'Fixed and updated esx clip. Original by: https://github.com/gregos1810/esx_clip'

shared_script {
  '@es_extended/imports.lua',
}

server_scripts {
  'server/sv_clip.lua'
}

sclient_scripts {
  'client/cl_clip.lua'
}
