@mods = []
@items = {}
@crafting_stations = {}
@recipes = {}

reload_items = ->
  @items = {}
  $.each mods, (index, mod) ->
    $.each mod.items, (category_id, category) ->
      $.each category, (item_id, item) ->
        item.category = category_id
        items[item_id] = item

reload_crafting_stations = ->
  @crafting_stations = {}
  $.each mods, (index, mod) ->
    $.each mod.crafting_stations, (crafting_station_id, crafting_station) ->
      $.each crafting_station.types, (index, crafting_station_type) ->
        if !crafting_station_type.burner_power?
          crafting_station_type.burner_power = 0
      crafting_stations[crafting_station_id] = crafting_station

reload_recipes = ->
  @recipes = {}
  $.each mods, (index, mod) ->
    $.each mod.recipes, (recipe_id, recipe) ->
      if !recipe.crafting_station?
        recipe.crafting_station = 'assembling_machine'
      if !recipe.output?
        recipe.output = {}
        recipe.output[recipe_id] = 1
      if !recipe.default_enabled?
        recipe.default_enabled = true
      recipe.enabled = recipe.default_enabled
      recipes[recipe_id] = recipe

check_integrity_of_recipes = ->
  $.each recipes, (recipe_id, recipe) ->
    $.each recipe.input, (input_id, count) ->
      if !items[input_id]?
        console.log recipe_id + ' has unknown input ' + input_id
    $.each recipe.output, (output_id, count) ->
      if !items[output_id]?
        console.log recipe_id + ' has unknown output ' + output_id
    if !recipe.time?
      console.log recipe_id + ' has unknown time'

@mod_loader =
  reload: ->
    reload_items()
    reload_crafting_stations()
    reload_recipes()
    check_integrity_of_recipes()