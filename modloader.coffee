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
      recipes[recipe_id] = recipe

@mod_loader =
  reload: ->
    reload_items()
    reload_crafting_stations()
    reload_recipes()