resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://live-bauerdk.sharp-stream.com/nova_dk_mp3?direct=true&listenerid=undefined&amsparams=playerid:SBS_RP_WEB;skey:1548627133;&awparams=loggedin:false;&aw_0_req.gdpr=true", volume = 0.1, name = "[DK] Nova Live" }
supersede_radio "RADIO_01_CLASS_ROCK" { url = "https://live-bauerdk.sharp-stream.com/myrock_dk_mp3?direct=true&listenerid=undefined&amsparams=playerid:SBS_RP_WEB;skey:1548627905;&awparams=loggedin:false;&aw_0_req.gdpr=true", volume = 0.1, name = "[DK] myRock Live" }
supersede_radio "RADIO_02_POP" { url = "https://live-bauerdk.sharp-stream.com/DK_HQ_RP04.aac?direct=true&listenerid=undefined&amsparams=playerid:SBS_RP_WEB;skey:1548628170;&awparams=loggedin:false;&aw_0_req.gdpr=true", volume = 0.1, name = "[DK] 80's Hits Live" }
supersede_radio "RADIO_04_PUNK" { url = "https://live-bauerdk.sharp-stream.com/DK_HQ_RP18.aac?direct=true&listenerid=undefined&amsparams=playerid:SBS_RP_WEB;skey:1548628303;&awparams=loggedin:false;&aw_0_req.gdpr=true", volume = 0.1, name = "[DK] Vi Unge Radio" }
supersede_radio "RADIO_05_TALK_01" { url = "https://live-bauerdk.sharp-stream.com/popfm_dk_mp3?direct=true&listenerid=undefined&amsparams=playerid:SBS_RP_WEB;skey:1548628449;&awparams=loggedin:false;&aw_0_req.gdpr=true", volume = 0.1, name = "[DK] PopFM" }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
