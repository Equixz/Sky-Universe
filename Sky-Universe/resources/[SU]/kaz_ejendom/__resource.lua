resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

ui_page "client/html/ui.html"
files {
	"client/html/ui.html",
	"client/html/styles.css",
	"client/html/scripts.js",
	"configNui.js",
	"client/html/debounce.min.js",
	"client/html/sweetalert2.all.min.js"
}

client_script {
  'lib/Proxy.lua',
  'lib/Tunnel.lua',
  "config.lua",
  "client/main.lua"
}

server_script {
  'lib/Proxy.lua',
  '@vrp/lib/utils.lua',
  "config.lua",
  'server/main.lua'
}
