var configs = {
    theme: {
        "primary_color": "#00b4f9",
        "secondary_color": "#0092cc"
    },
    jobs: [
        // {
        //     "title": "Example title",
        //     "shortDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvina", // Max 90 characters
        //     "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvina",
        //     "group": "exampleRole",
        //     "whitelisted": true,
        //     requirements: ["Example requirement"]
        // },
        // Whitelisted jobs
        {
            "title": "Kriminel",
            "shortDescription": "Er du interresseret i at lave stoffer?",
            "description": "Er du den kriminelle type, og har interresse for kemi, så er dette lige dig.",
            "group": "Kriminel",
            "whitelisted": false,
            "iconName": "krimi.png",
            requirements: ["God til Kemi", "Modig", "Tålmodig"]
        },
        {
            "title": "Drugdealer",
            "shortDescription": "God til mennesker? Lyst til at leve i den farlige bane?",
            "description": "God menneske kontakt og forståelse - Sociale skills og gode salgsevner?",
            "group": "Drugdealer",
            "whitelisted": false,
            "iconName": "krimi.png",
            requirements: ["Gode salgsevner", "Modig", "Skummel"]
        },
        {
            "title": "Biltyv",
            "shortDescription": "Er du til fart og spænding?",
            "description": "Som Biltyv skal du være hurtig på aftrækkeren som man siger! Det handler om at stjæle biler, enten andre spillers bil, eller diverse udlejningsbiler. Hvis du for fat i dem, er der mere info at hente i Sandy.",
            "group": "Biltyv",
            "whitelisted": false,
            "iconName": "krimi.png",
            requirements: ["Skal ikke være bange for politiet", "Skal være hurtig", "Skal have forbindelser"]
        }     
		
    ]
}