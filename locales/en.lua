local Translations = {
    progbar = {
        unPack = 'Unpacking',
        breath = 'Breathing',
        fillballoon = 'Fill balloon',
    },
    notify = {
        fill = 'you feel dizzy',
        noballoons = "You don't have balloons"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})