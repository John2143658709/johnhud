LOADLANGUAGE = function() return {
    assault = {
        anticipation = "Starting",
        fade = "Fade",
        build = "Build",
        sustain = "Sustain",
        none = "Not in a heist",
        control = "Control",
        compromised = "Compromised",
        stealth = "Stealth",
        caution = "Caution",
        danger = "Danger",
        calling = "Somebody is calling the police!",
        pagers = "%s pagers used",
    },
    _ = {
        start = "JohnHUD started",
        trans_error = "Translation Error",
        affix_error = "Affixation Error",
        cheater = "Acheivements are disabled because you are cheating",
        newver = "There is a new version of johnhud available (%s -> %s). Type '/update' when in a game to update.",
        nonewver = "There is no new version available (using version %s)",
        downloading = "Downloading...",
        applying = "Applying...",
    },
    chat = {
        unknown = "Unknown command '%s'",
        cmdplaying = "Current players",
        noplayer = "This command requires a player argument",
        solo = "Currently in a solo heist",
        requiresheist = "You must be in a heist to use this",
        internalerror = "Internal command error (This shouldnt happen!)",
        needhost = "You must be the host to use this",
        kickself = "You cannot kick yourself from a game",
        valuechange = "Value '%s' -> '%s'",
        resetdata = "Defaulting version config settings",
        writeunpure = "Creating a unpure version file (full data)",
        writepure = "Creating a pure version file (version only)",
        missingarguments = "This command needs additional arguments",
        ignoring = "Ignoring ",
        unignore = "You no longer ignore %s",
    },
    preplanning = {
        cost = "Cost (%s)",
        favors = "Favors",
        num = "# of plans (%s)",
        other = "Placed objects",
        notfound = "The plan '%s' was not found",
        toocostly = "You do not have enough favors to use this plan",
        verytoocostly = "This map does not have enough favors to use this plan",
    },
    skilltree = {
        newtree = "New skill tree",
        none = "There is no skill tree with this name",
        multi = "There are multiple skilltrees with this name (%s)",
        new = "Created a new skilltree",
        notjhud = "You cannot remove a tree that was not created by jhud",
        notempty = "You can only remove empty skilltrees. Use -f to force.",
        removed = "Successfully removed %s",
        changed = "Changed skill set to %s",
        betweendays = "You can not switch skillsets when you are between days",
    },
    pd2stats = {
        report = "%s has reported you for being %s",
        commend = "%s has commended you for being %s",

        docommend1 = "You have commended ",
        docommend2 = " for being %s",

        doreport1 = "You have commended ",
        doreport2 = " for being %s",

        kind = "friendly",
        teacher = "a teacher",
        leader = "a leader",
        akind = "kind",
        ateacher = "teacher",
        aleader = "leader",
        someone = "Someone",
    },
    autoupdate = {
        upfail = "Update failed. ", --Space intentional for error message
        upsucc = "Update complete.",
        navailable = "There is no new update on the %s branch",
        branch = "Branch",
        version = "Version",
        author = "Author",
        ud1 = "A new update is available for johnhud",
        ud2 = "Type '/update apply' to update to version %s-%s",
    },
} end
