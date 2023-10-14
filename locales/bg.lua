local Translations = {
    progbar = {
        unPack = 'Разопаковане',
        unPack = 'Дишаш',
        unPack = 'Пълниш балона',
    },
    notify = {
        fill = 'Чувстваш се замаян',
        noballoons = 'Нямате балони'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})