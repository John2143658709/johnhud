jhud.log("Loading options")
jhud.options = {
    modules = { --This is the list of modules that get loaded
                -- words in parenthesis are required modules
        "language",     --[REQUIRED]
        "hook",         --[REQUIRED]
        "net",          --[REQUIRED]
        "suspct",       -- Shows suspicion percentages
        "bind",         -- Allows you to bind keys
        "assault",      --[RECCOMENDED] Gives heist status at the top of the screen
                        --  !!Instead of disabling this, simply change both of the showdurings to false
                        --    This will let people with the mod in your lobby still have the indicator
        "chat",         -- disabling this will disable johnhud from printing to your chat
        "voice",        -- (bind) Allows you to bind keys for voicelines
        "infamy",       -- Internal infamy stuff
        "admin",        --TODO
        "player",
        "autoupdate",
        "preplanning",
--      "mutate",
         "summary",
--      "gamehud",
--      "pd2stats",
    },
    cheat = false,      -- Enable cheater modules
    cheaterModules = {
        "wallhack",     -- Bind a key to see enemies through walls
    },
    disabledModules = {},
    language = "EN",
    m = {
        _ = {
            showload = true, --Prints '%skull%: JohnHUD' Loaded to verify that all modules loaded corretly
        },
        summary = {
            chat = false,
            draw = true,
        },
        gamehud = {
            arcolor = Color("0000ff"),
            hpcolor = Color("ff0000"),
        },
        pd2stats = {
            commend = Color("15ed4f"),
            report = Color("de2500"),
            showCommends = true, --Give the other person a message that you are commendthing them
            showReports = false,
        },
        assault = {
            color = {
                anticipation = Color('7519FF'),
                fade = Color('00FFCC'),
                build = Color('00CC66'),
                sustain = Color('CCFF33'),
                none = Color('CCFF33'),
                control = Color('99CC00'),
                compromised = Color('A6A610'),
                stealth = Color('005CE6'),
                caution = Color('FF9900'),
                danger = Color('CC0000'),
            },
            stealthind = {
                y = 0, --more = down
                x = 0, --more = right
                text_size = 7, --more = larger
            },
            calling = {
                y = 0, --more = down
                x = 0, --more = right
                text_size = 15, --more = larger
                color = Color(1, .1, .1)
            },
            danger = {
                --Change the text of the indicator when an event is happening
                --As of version v2.3, only the hosts' version of these numbers matter
                --Values
                -- 0: Stealth
                -- 1: Caution
                -- 2: Danger
                -- 3: Compromised
                pager = 1,      --A pager needs to be asnwered
                uncool = 1,     --A civ or cop is alerted
                uncoolstanding = 2, --an uncool civ or cop is standing
                questioning = 0,--Someone is being detected
                nopagers = 3,   --More than 4 pagers required
            },

            showdiff = true,    --Show internal difficulty
            showdrama = false,   --Show internal drama percent
            showhostageskilled = true,   --Show number of hostages killed

            showpagers = true,  --Show the #pagers in the indicator
            showpagersleft = true,  --Show the number of pagers that you can use
                                    -- When false this will display the amount of pagers you have used
            showuncool = true,  --Show the number of uncool civilians
            showuncoolstanding = true,  --Show the number of uncool civilians who are not subdued
            uncoolsitting = true,   --if this and showuncoolstanding are enabled, the number of uncool civs
                                    -- shown on the indicator will only be counted once as either sitting or
                                    -- standing
            uppercase = true,   --Make the indicator uppercase
            showcalling = true, --Show a indicator when someone is calling the police
            showduring = {
                stealth = true,
                assault = true
            },
            chatPGUsed = true,  --Show the number of pagers remaining as a chat message
            showghost = true,   --Show a ghost symbol in the tag if stealth is active
                                --If the chat module is not active, it will display a S
        },
        suspct = {              --Stealth percent indicator
            num = 5,            --Max number of counters at once
            showDetection = true,   --Show the detection level of all players (in the center of their hp)
            showHP = false,   --Show the HP of all players [broken]
        },
        chat = {
            showemotes = true,
            showinfamy = true,
            unknown = Color("ff0044"),  --Unknown command
            spare1  = Color("33dd77"),
            spare2  = Color("3377dd"),
            spare3  = Color("dd7733"),
            failed  = Color("ff3333"),
        },
        infamy = {
            useRoman = false --Use roman numerals in the rank strings like before infamy2
        },
        autoupdate = {
            uname = "John2143658709",
            project = "johnhud",
            branch = "dev",
        }
    }
}
jhud.binds = {
    voice = {},
    bainlines = {}
}
