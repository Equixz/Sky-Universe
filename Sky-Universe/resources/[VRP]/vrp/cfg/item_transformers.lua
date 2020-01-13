
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
    ---------------------------------------STYRKETRÆNING / FITNESS---------------------------------------
    {
        name="Styrketræning", -- menu name
        r=255,g=125,b=0, -- color
        max_units=500,
        units_per_minute=100,
        x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
        radius=7.5, height=1.5, -- area
        recipes = {
            ["Træn styrke"] = { -- action name
                description="Øger din styrke. Maks styrke du kan løfte er 100 KG", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={}, -- items taken per unit
                products={}, -- items given per unit
                aptitudes={ -- optional
                    ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
                }
            }
        }
    },
    {
        name="Styrketræning", -- menu name
        r=255,g=125,b=0, -- color
        max_units=500,
        units_per_minute=100,
        x=-1647.2000732422,y=2530.3559570313,z=45.564888000488,
        radius=7.5, height=1.5, -- area
        recipes = {
            ["Træn styrke"] = { -- action name
                description="Øger din styrke. Maks styrke du kan løfte er 100 KG", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={}, -- items taken per unit
                products={}, -- items given per unit
                aptitudes={ -- optional
                    ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
                }
            }
        }
    },
    {
        name="Styrketræning", -- menu name
        r=255,g=125,b=0, -- color
        max_units=500,
        units_per_minute=100,
        x=1638.5759277344,y=2525.8054199219,z=45.564891815186,
        radius=7.5, height=1.5, -- area
        recipes = {
            ["Træn styrke"] = { -- action name
                description="Øger din styrke. Maks styrke du kan løfte er 100 KG", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={}, -- items taken per unit
                products={}, -- items given per unit
                aptitudes={ -- optional
                    ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
                }
            }
        }
    },
        ---------------------------------------Fængsel---------------------------------------
    {
        name="Fængselsarbejde", -- menu name
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=300,
        units_per_minute=50,
        x=1667.2224121094,y=2507.9050292969,z=45.564876556396,
        radius=8, height=1.5, -- area
        recipes = {
            ["Fej gulvet"] = { -- action name
                description="Fejer gulvet!", -- action description
                in_money=0, -- money taken per unit
                out_money=1, -- money earned per unit
                reagents={}, -- items taken per unit
                products={}, -- items given per unit
                aptitudes={ -- optional
                }
            }
        }
    },

    ---------------------------------------KOKAIN FREMSTILLING---------------------------------------
    {
        name="Kokain distribution", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=1092.8381347656,y=-3194.8552246094,z=-38.993469238281,
        radius=10, height=1.5, -- area
        recipes = {
            ["Lav Kokain"] = { -- action name
                description="Pak kokain i poser", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kokainblade"] = 1
                }, -- items taken per unit
                products={
                    ["kokain"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	    ---------------------------------------METH FARM---------------------------------------
    {
        name="Meth Farm", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=1391.8924560547,y=3605.9050292969,z=38.941890716553,
        radius=10, height=1.5, -- area
        recipes = {
            ["Saml Kemikalier"] = { -- action name
                description="Saml kemikalier til Meth.", -- action description
                in_money=100, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                }, -- items taken per unit
                products={
                    ["kemikalier"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	    ---------------------------------------Meth Lab---------------------------------------
    {
        name="Meth Lab", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=2433.2990722656,y=4968.6196289063,z=42.34761428833,
        radius=10, height=1.5, -- area
        recipes = {
            ["Bland Kemikalier"] = { -- action name
                description="Bland Kemikalierne", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kemikalier"] = 2
                }, -- items taken per unit
                products={
                    ["meth"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	    ---------------------------------------Amf Farm---------------------------------------
     {
        name="Amf Farm", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=2330.6740722656,y=2569.009765625,z=46.676692962646,
        radius=5, height=1.5, -- area
        recipes = {
            ["Saml Kemikalier"] = { -- action name
                description="Saml kemikalier til Amf.", -- action description
                in_money=50, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                }, -- items taken per unit
                products={
                    ["kemikalier2"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	 ---------------------------------------SKUNK Farm---------------------------------------
	     {
        name="Skunk farm", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=282.54400634766,y=6799.7646484375,z=15.696075439453,
        radius=5, height=1.5, -- area
        recipes = {
            ["Saml skunkblade"] = { -- action name
                description="Saml blade til skunk.", -- action description
                in_money=50, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                }, -- items taken per unit
                products={
                    ["skunk100"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	    ---------------------------------------AMF LAB---------------------------------------
    {
        name="Amf Lab", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=30.322141647339,y=3668.9995117188,z=41.274940490723,
        radius=5, height=1.5, -- area
        recipes = {
            ["Bland kemikalier"] = { -- action name
                description="Bland kemikalier til amf", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kemikalier2"] = 1
                }, -- items taken per unit
                products={
                    ["amf"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
		    ---------------------------------------SKUNK LAB--------------------------------------
    {
        name="Skunk Tørring", -- menu name
        permissions = {"farm.access"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=-556.17651367188,y=5324.4399414063,z=73.599685668945,
        radius=5, height=1.5, -- area
        recipes = {
            ["Tør skunk"] = { -- action name
                description="Tør skunk.", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["skunk100"] = 1
                }, -- items taken per unit
                products={
                    ["klump10"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
	--------------------------------------- (ROOM)---------------------------------------	
	 {
        name="Sælg Stoffer", -- menu name
        permissions = {"sellroom.whitelisted"},
        r=0,g=255,b=0, -- color
        max_units=250,
        units_per_minute=90,
        x=245.01321411133,y=369.48263549805,z=105.73812866211,
        radius=2, height=1.0, -- area
        recipes = {
            ["Sælg Kokain"] = { -- action name
                description="Sælg Kokain", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={ -- items taken per unit
                    ["kokain"] = 1
                }, -- items taken per unit
               products={
				["dirty_money"] = 800
                }, -- items given per unit
                aptitudes={}
                },
            ["Sælg Amfetamin"] = { -- action name
                description="Sælg Amfetamin", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={ -- items taken per unit
                    ["amf"] = 1
                }, -- items taken per unit
               products={
				["dirty_money"] = 500
                }, -- items given per unit
                aptitudes={}
                },
			["Sælg Skunk"] = { -- action name
                description="Sælg Skunk", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={ -- items taken per unit
                    ["klump10"] = 1
                }, -- items taken per unit
               products={
				["dirty_money"] = 500
                }, -- items given per unit
                aptitudes={}
                },
            ["Sælg Meth"] = { -- action name
                description="Sælg Meth", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={ -- items taken per unit
                    ["meth"] = 1
                }, -- items taken per unit
               products={
				["dirty_money"] = 675
                }, -- items given per unit
                aptitudes={}
                }
            }
        },
	

    ---------------------------------------HAK GULD---------------------------------------
    {
        name="Guldore", -- menu name
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=1000,
        units_per_minute=50,
        x=2936.8337402344,y=2744.1533203125,z=43.41520690918,
        radius=3, height=1.5, -- area
        recipes = {
            ["Hak Guldore"] = { -- action name
                description="Hakker Guldore", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={

                }, -- items taken per unit
                products={
                    ["guldmalm"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
    ---------------------------------------GULD FREMSTILLING---------------------------------------
    {
        name="Guld fremstilling", -- menu name'
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=1000,
        units_per_minute=50,
        x=1087.8717041016,y=-2001.9053955078,z=30.880701065063,
        radius=5, height=1.5, -- area
        recipes = {
            ["Lav Guldbar"] = { -- action name
                description="Laver Guldbar", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["guldmalm"]=3
                }, -- items taken per unit
                products={
                    ["guldbar"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
    ---------------------------------------SALG AF GULD---------------------------------------
    {
        name="Sælg guld", -- menu name
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=2000,
        units_per_minute=50,
        x=-620.28698730469,y=-226.96279907227,z=38.056953430176,
        radius=5, height=1.5, -- area
        recipes = {
            ["Sælg Guldbar"] = { -- action name
                description="Sælger Guldbar", -- action description
                in_money=0, -- money taken per unit
                out_money=450, -- money earned per unit
                reagents={
                    ["guldbar"] = 1
                }, -- items taken per unit
                products={

                }, -- items given per unit
                aptitudes={}
            }
        }
    },

    ---------------------------------------HAK ALU---------------------------------------
    {
        name="AluOre", -- menu name
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=1000,
        units_per_minute=50,
        x=2948.9477539063,y=2733.6516113281,z=44.869621276855,
        radius=3, height=1.5, -- area
        recipes = {
            ["Hak AluOre"] = { -- action name
                description="Hakker Aluminium Ore", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={

                }, -- items taken per unit
                products={
                    ["alumalm"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
    ---------------------------------------ALU FREMSTILLING---------------------------------------
    {
        name="Aluminium fremstilling", -- menu name'
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=1000,
        units_per_minute=50,
        x=1109.0593261719,y=-2007.5606689453,z=30.9499168396,
        radius=5, height=1.5, -- area
        recipes = {
            ["Lav AluminiumBar"] = { -- action name
                description="Laver AliminiumBar", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alumalm"]=3
                }, -- items taken per unit
                products={
                    ["alubar"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
    
    ---------------------------------------SALG AF ALU---------------------------------------
    {
        name="Sælg Aliminum Bar", -- menu name
        permissions = {"mining.harvest"},
        r=0,g=255,b=0, -- color
        max_units=2000,
        units_per_minute=50,
        x=894.43231201172,y=-889.41235351563,z=27.132949829102,
        radius=5, height=1.5, -- area
        recipes = {
            ["Sælg Aluminium Bar"] = { -- action name
                description="Sælger Aliminium", -- action description
                in_money=0, -- money taken per unit
                out_money=350, -- money earned per unit
                reagents={
                    ["alubar"] = 1
                }, -- items taken per unit
                products={

                }, -- items given per unit
                aptitudes={}
            }
        }
    },
    ---------------------------------------FRAMES---------------------------------------
    {
        name="Fremstil Frames", -- menu name'
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=10,
        units_per_minute=1,
        x=909.75848388672,y=-3210.345703125,z=-98.222267150879,
        radius=1, height=1.5, -- area
        recipes = {
            ["FRAMES (PISTOL)"] = { -- action name
                description="FREMSTIL FRAMES (PISTOL)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=50
                }, -- items taken per unit
                products={
                    ["framepistol"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["FRAMES (REVOLVER)"] = { -- action name
                description="FREMSTIL FRAMES (REVOLVER)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=50
                }, -- items taken per unit
                products={
                    ["framerevolver"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["FRAMES (HEAVY)"] = { -- action name
                description="FREMSTIL FRAMES (HEAVY)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=50
                }, -- items taken per unit
                products={
                    ["frameheavy"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    ---------------------------------------SAML FRAMES---------------------------------------
    {
        name="Samler Frames", -- menu name'
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=10,
        units_per_minute=1,
        x=906.21099853516,y=-3230.5893554688,z=-98.294364929199,
        radius=1, height=1.5, -- area
        recipes = {
            ["SAML FRAMES (PISTOL)"] = { -- action name
                description="SAML FRAMES (PISTOL)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["framepistol"]=2
                }, -- items taken per unit
                products={
                    ["framepistoldone"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["SAML FRAMES (REVOLVER)"] = { -- action name
                description="SAML FRAMES (REVOLVER)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["framerevolver"]=2
                }, -- items taken per unit
                products={
                    ["framerevolverdone"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["SAML FRAMES (HEAVY)"] = { -- action name
                description="SAML FRAMES (HEAVY)", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["frameheavy"]=4
                }, -- items taken per unit
                products={
                    ["frameheavydone"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    
    ---------------------------------------SAML VÅBEN---------------------------------------
    {
        name="SAML VÅBEN", -- menu name'
        permissions = {"user.banderelateret"},
        r=0,g=255,b=0, -- color
        max_units=10,
        units_per_minute=1,
        x=896.61737060547,y=-3217.296875,z=-98.225433349609,
        radius=1, height=1.5, -- area
        recipes = {
            ["SAML VÅBEN (PISTOL)"] = { -- action name
                description="SAML VÅBEN (PISTOL)", -- action description
                in_money=1155000, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["framepistoldone"]=1,
                    ["barrelpistol"]=1,
                }, -- items taken per unit
                products={
                    ["wbody|WEAPON_PISTOL_MK2"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["SAML VÅBEN (REVOLVER)"] = { -- action name
                description="SAML VÅBEN (REVOLVER)", -- action description
                in_money=1155000, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["framerevolverdone"]=1,
                    ["barrelrevolver"]=1,
                }, -- items taken per unit
                products={
                    ["wbody|WEAPON_REVOLVER"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["SAML VÅBEN (HEAVY)"] = { -- action name
                description="SAML VÅBEN (HEAVY)", -- action description
                in_money=1310000, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["frameheavydone"]=1,
                    ["barrelheavy"]=1,
                }, -- items taken per unit
                products={
                    ["wbody|WEAPON_PISTOL50"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    
    ---------------------------------------SAML SKUD---------------------------------------
    {
        name="LAV SKUD", -- menu name'
        permissions = {"player.loot"},
        r=0,g=255,b=0, -- color
        max_units=20,
        units_per_minute=1,
        x=909.93359375,y=-3222.2727050781,z=-98.26586151123,
        radius=1, height=1.5, -- area
        recipes = {
            ["LAV SKUD (PISTOL)"] = { -- action name
                description="LAV SKUD (PISTOL)", -- action description
                in_money=1350, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=5,
                }, -- items taken per unit
                products={
                    ["wammo|WEAPON_PISTOL_MK2"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["LAV SKUD (REVOLVER)"] = { -- action name
                description="LAV SKUD (REVOLVER)", -- action description
                in_money=1650, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=7,
                }, -- items taken per unit
                products={
                    ["wammo|WEAPON_REVOLVER"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["LAV SKUD (HEAVY)"] = { -- action name
                description="LAV SKUD (HEAVY)", -- action description
                in_money=2700, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["alubar"]=14,
                }, -- items taken per unit
                products={
                    ["wammo|WEAPON_PISTOL50"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    
    ---------------------------------------SAML BARREL---------------------------------------
    {
        name="SAML BARREL", -- menu name'
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=20,
        units_per_minute=1,
        x=885.56665039063,y=-3199.0124511719,z=-98.196212768555,
        radius=1, height=1.5, -- area
        recipes = {
            ["TIL PISTOL"] = { -- action name
                description="SAML BARREL DELE TIL PISTOL", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["barrelpartpistol"]=12,
                }, -- items taken per unit
                products={
                    ["barrelpistol"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["TIL REVOLVER"] = { -- action name
                description="SAML BARREL DELE TIL REVOLVER", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["barrelpartrevolver"]=12,
                }, -- items taken per unit
                products={
                    ["barrelrevolver"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["TIL HEAVY"] = { -- action name
                description="SAML BARREL DELE TIL HEAVY", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["barrelpartheavy"]=12,
                }, -- items taken per unit
                products={
                    ["barrelheavy"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    
    ---------------------------------------KØB BARREL---------------------------------------
    {
        name="KØB BARREL", -- menu name'
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=50,
        units_per_minute=5,
        x=-445.55688476563,y=1600.3425292969,z=358.18292236328,
        radius=1, height=1.5, -- area
        recipes = {
            ["TIL PISTOL(KOKAIN)"] = { -- action name
                description="LAV BARREL DEL TIL PISTOL - BETAL MED KOKAIN", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kokain"]=83,
                }, -- items taken per unit
                products={
                    ["barrelpartpistol"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["TIL REVOLVER(KOKAIN)"] = { -- action name
                description="LAV BARREL DEL TIL REVOLVER - BETAL MED KOKAIN", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kokain"]=83,
                }, -- items taken per unit
                products={
                    ["barrelpartrevolver"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            ["TIL HEAVY(KOKAIN)"] = { -- action name
                description="LAV BARREL DEL TIL HEAVY - BETAL MED KOKAIN", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["kokain"]=166,
                }, -- items taken per unit
                products={
                    ["barrelpartheavy"] = 1
                }, -- items given per unit
                aptitudes={ -- optional

                }
            },
            
        }
    },
    ---------------------------------------Træ Fældning---------------------------------------
    {
        name="Træfarm", -- menu name
        permissions = {"tree.cutter"},
        r=0,g=200,b=0, -- color
        max_units=350,
        units_per_minute=20,
        x=-636.44482421875,y=5471.7973632813,z=53.17057800293,
        radius=10,5, height=10,5, -- area
        recipes = {
            ["Fæld træer"] = { -- action name
                description="Fæld træer og få stammer ud af dem.", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                }, -- items taken per unit
                products={
                    ["tree"] = 1
                }, -- items given per unit
                aptitudes={ -- optional
                ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
                }
            }
        }
    },

    ---------------------------------------Træ Fremstilling---------------------------------------
    {
        name="Savværk", -- menu name
        permissions = {"tree.cutter"},
        r=0,g=200,b=0, -- color
        max_units=350,
        units_per_minute=35,
        x=-513.70294189453,y=5246.7944335938,z=80.209884643555,
        radius=8, height=5,5, -- area
        recipes = {
            ["Beskær stammer"] = { -- action name
                description="Skær dine stammer om til planker.", -- action description
                in_money=0, -- money taken per unit
                out_money=0, -- money earned per unit
                reagents={
                    ["tree"] = 1,
                }, -- items taken per unit
                products={
                    ["planks"] = 5,
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },


    ---------------------------------------Træ SALG---------------------------------------
    {
        name="Byggepladser", -- menu name
        permissions = {"tree.cutter"},
        r=0,g=200,b=0, -- color
        max_units=350,
        units_per_minute=35,
         x=-497.61245727539,y=-954.251953125,z=23.958311080933,
        radius=1.5, height=1.5, -- area
        recipes = {
            ["Sælg Planker"] = { -- action name
                description="Sælger dine planker til byggepladsen", -- action description
                in_money=0, -- money taken per unit
                out_money=150, -- money earned per unit
                reagents={
                    ["planks"] = 3,
                }, -- items taken per unit
                products={
                }, -- items given per unit
                aptitudes={ -- optional

                }
            }
        }
    },
    ---------------------------------------HVIDVASKNING---------------------------------------
  {
        name="Hvidvask", -- menu name
        permissions = {"civil.job"},
        r=0,g=255,b=0, -- color
        max_units=500,
        units_per_minute=500,
        x=-190.24546813965,y=6146.1889648438,z=36.863067626953,
        radius=4, height=1, -- area
        recipes = {
            ["Hvidvask penge (10.000)"] = { -- action name
                description="Hvidvask 10.000 sorte penge (70% udbytte)", -- action description
                in_money=0, -- money taken per unit
                out_money=7000, -- money earned per unit
                reagents={ -- items taken per unit
                    ["dirty_money"] = 10000
                }, -- items taken per unit
                products={},
                aptitudes={}
                },
            ["Hvidvask penge (50.000)"] = { -- action name
                description="Hvidvask 50.000 sorte penge (70% udbytte)", -- action description
                in_money=0, -- money taken per unit
                out_money=35000, -- money earned per unit
                reagents={ -- items taken per unit
                    ["dirty_money"] = 50000
                }, -- items taken per unit
                products={},
                aptitudes={}
                },
                ["Hvidvask penge (100.000)"] = { -- action name
                description="Hvidvask 100.000 sorte penge (70% udbytte)", -- action description
                in_money=0, -- money taken per unit
                out_money=70000, -- money earned per unit
                reagents={ -- items taken per unit
                    ["dirty_money"] = 100000
                }, -- items taken per unit
                products={},
                aptitudes={}
                },
                ["Hvidvask penge (500.000)"] = { -- action name
                description="Hvidvask 450.000 sorte penge (70% udbytte)", -- action description
                in_money=0, -- money taken per unit
                out_money=350000, -- money earned per unit
                reagents={ -- items taken per unit
                    ["dirty_money"] = 500000
                }, -- items taken per unit
                products={},
                aptitudes={}
                },
                ["Hvidvask penge (1.000.000)"] = { -- action name
                description="Hvidvask 1.000.000 sorte penge (70% udbytte)", -- action description
                in_money=0, -- money taken per unit
                out_money=700000, -- money earned per unit
                reagents={ -- items taken per unit
                    ["dirty_money"] = 1000000
                }, -- items taken per unit
                products={},
                aptitudes={}
                }
            }
        }
    }



-- define transformers randomly placed on the map
cfg.hidden_transformers = {

}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
    infos = {},
    positions = {},
    interval = 60, -- interval in minutes for the reseller respawn
    duration = 10, -- duration in minutes of the spawned reseller
    blipid = 133,
    blipcolor = 2
}

return cfg