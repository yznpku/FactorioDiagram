@ui =
  build_recipe_data: (recipe_count) ->
    data = []
    $.each recipe_count, (recipe_id, absolute_recipe_count) ->
      recipe = recipes[recipe_id]
      recipe_data =
        name: tr(recipe.crafting_station) + ': ' + tr(recipe_id)
        count: +absolute_recipe_count.toFixed 3
        open: true
        data: []
      $.each recipe.input, (input_id, input_count) ->
        recipe_data.data.push
          name: 'Input: ' + tr(input_id) + ' * ' + input_count
          speed: +(input_count * absolute_recipe_count / recipe.time).toFixed 3
      $.each recipe.output, (output_id, output_count) ->
        recipe_data.data.push
          name: 'Output: ' + tr(output_id) + ' * ' + output_count
          speed: +(output_count * absolute_recipe_count / recipe.time).toFixed 3
      data.push recipe_data
    data

@table_ui =
  rows: [
    { type: 'header', template: 'Factorio Diagram' }

    {
      margin: 0
      cols: [
        {
          header: 'Config'
          gravity: 0.2
        }
        { view: 'resizer' }
        {
          header: 'Result'
          body:
            cols: [
              id: 'recipe_tree'
              view: 'treetable'
              columns: [
                { id: 'name',  header: 'Name',  width: 500, template:'{common.treetable()} #name#' }
                { id: 'count', header: 'Count',  width: 200 }
                { id: 'speed', header: 'Speed', width: 200 }
              ]
            ]
        }
      ]
    }
  ]