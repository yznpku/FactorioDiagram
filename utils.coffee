@utils =
  filter: (container, f) ->
    if container instanceof Array
      result = []
      $.each container, (index, element) ->
        result.push element if f index, element
    else
      result = {}
      $.each container, (key, value) ->
        result[key] = value if f key, value
    result
  join_array: (a1, a2) ->
    result = $.merge [], a1
    $.each a2, (index, element) ->
      result.push element if -1 == $.inArray element, result
    result
  make_zero_array: (dimensions) ->
    if dimensions.length == 0
      0
    else
      a = []
      dimension = dimensions.shift()
      while dimension > 0
        clone = $.merge [], dimensions
        a.push utils.make_zero_array clone
        dimension--
      a
  output_default_translation: ->
    ids = {}
    $.each items, (item_id, item) -> ids[item_id] = item_id
    $.each recipes, (recipe_id, recipe) -> ids[recipe_id] = recipe_id
    $.each ids, (index, id) ->
      words = id.split '_'
      words[0] = String.fromCharCode(words[0].charCodeAt(0)-32) + words[0].substr(1)
      str = ''
      $.each words, (index, word) ->
        if index > 0
          str += ' '
        str += word
      console.log '\'' + id + '\': \'' + str + '\''
  object_size: (object) ->
    ($.map object, (x) -> x).length