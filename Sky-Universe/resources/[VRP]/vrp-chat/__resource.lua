--
-- Created by IntelliJ IDEA.
-- User: Apisathan
-- Date: 11-01-2019
-- Time: 20:22
-- Github: https://github.com/Apisathan/FiveM-Scripts
--

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

dependency 'vrp'

server_scripts {
    '@vrp/lib/utils.lua',
    'server.lua'
}

client_scripts {
    'client.lua'
}