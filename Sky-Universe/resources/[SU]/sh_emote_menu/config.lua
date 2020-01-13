-- Menu configuration, array of menus to display
menuConfigs = {
    ['menu'] = {
        enableMenu = function()
            return true
        end,
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                }
            }
        }
    }
}

-- Submenu configuration
subMenuConfigs = {
    ['submenu1'] = {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu1_a", "submenu1_b", "submenu1_c", "submenu1_d", "submenu1_e"},
                    commands = {"submenu1_a", "submenu1_b", "submenu1_c", "submenu1_d", "submenu1_e"}
                }
            }
        }
    },
    ['submenu2'] = {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:hat.png", "imgsrc:maske.png", "imgsrc:jakke.png", "imgsrc:troeje.png", "imgsrc:bukser.png", "imgsrc:sko.png"},
                    commands = {"hat", "maske", "jakke", "tshirt", "bukser", "sko"}
                }
            }
        }
    },
    ['submenu3'] = {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"[emotes]", "x arme", "facepalm", "dual fuck", "tys", "tis", "notesblok", "emstjek", "læn", "kikkert", "film", "kort", "vagt"},
                    commands = {"emotes", "e krydsarme", "e facepalm", "e dobbeltfuck", "e tys", "e tis", "e notesblok", "e tjekperson", "e læn", "e kikkert", "e optag", "e kort", "e vagt"}
                }
            }
        }
    },
    ['submenu4'] = {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:blindfold.png", "imgsrc:bind.png"},
                    commands = {"blindfold", "bind"}
                }
            }
        }
    },
    ['submenu5'] = {
        data = {
            keybind = "F2",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#FFFFFF', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.30 },
                    selected = { ['fill'] = '#27e87e', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:exit.png", "imgsrc:cloth.png", "imgsrc:emotes.png", "imgsrc:shortcut.png", "imgsrc:car.png"},
                    commands = {"closemenu", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:hood.png", "imgsrc:trunk.png", "imgsrc:windows.png", "imgsrc:engine.png"},
                    commands = {"hood", "trunk", "windows", "stats"}
                }
            }
        }
    },
}
