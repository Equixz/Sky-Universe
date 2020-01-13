resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description "kaz_robbery"


dependency "vrp"

client_scripts{
  "cfg/bank.lua",
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "cfg/bank.lua",
  "server.lua"
}
