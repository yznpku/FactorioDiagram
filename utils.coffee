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
