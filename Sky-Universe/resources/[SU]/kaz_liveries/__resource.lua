resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

ui_page "html/ui.html"
files {
	"html/ui.html",
	"html/styles.css",
	"html/scripts.js",
	"configNui.js",
	"html/debounce.min.js",
	"html/sweetalert2.all.min.js"
}

client_script {
  'lib/Proxy.lua',
  'lib/Tunnel.lua',
  "client.lua"
}

server_script {
  'lib/Proxy.lua',
  '@vrp/lib/utils.lua',
  'server.lua'
}
