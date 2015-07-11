@translations = []
language = 'en_US'
@tr = (id) ->
  if translations[language].data[id]? then translations[language].data[id] else id