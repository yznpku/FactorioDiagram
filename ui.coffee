@ui =
  build_result_data: (recipe_count) ->
    data = []
    $.each recipe_count, (recipe_id, absolute_recipe_count) ->
      recipe = recipes[recipe_id]
      result_data =
        name: tr(recipe.crafting_station) + ': ' + tr(recipe_id)
        count: +absolute_recipe_count.toFixed 3
        open: true
        data: []
      $.each recipe.input, (input_id, input_count) ->
        result_data.data.push
          name: 'Input: ' + tr(input_id) + ' * ' + input_count
          speed: +(input_count * absolute_recipe_count / recipe.time).toFixed 3
      $.each recipe.output, (output_id, output_count) ->
        result_data.data.push
          name: 'Output: ' + tr(output_id) + ' * ' + output_count
          speed: +(output_count * absolute_recipe_count / recipe.time).toFixed 3
      data.push result_data
    data
  build_recipe_data: (recipes) ->
    data = []
    $.each recipes, (recipe_id, recipe) ->
      recipe_data = 
        name: tr(recipe_id)
      data.push recipe_data
    data


result_treetable =
  id: 'recipe_tree'
  view: 'treetable'
  columns: [
    { id: 'name',  header: 'Name',  width: 500, template: '{common.treetable()} #name#' }
    { id: 'count', header: 'Count',  width: 200 }
    { id: 'speed', header: 'Speed', width: 200 }
  ]

config_area =
  rows: [
    {
      cells: [
        {
          id: 'mod_config'
        }
        {
          id: 'recipe_config'
          view: 'treetable'
          columns: [ { id: 'name', header: 'Name', template: '{common.treetable()} #name#', fillspace: true } ]

        }
      ]
    }
    {
      view: 'tabbar'
      type: 'bottom'
      multiview: true
      options: [
        { value: 'Mods', id: 'mod_config' }
        { value: 'Recipes', id: 'recipe_config' }
      ]
    }
  ]

@main_ui =
  rows: [
    { type: 'header', template: 'Factorio Diagram' }

    {
      margin: 0
      cols: [
        {
          header: 'Configuration'
          gravity: 0.2
          body: config_area
        }
        # { view: 'resizer' }
        {
          header: 'Result'
          body: result_treetable
        }
      ]
    }
  ]