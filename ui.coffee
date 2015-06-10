@table_ui =
  rows: [
    { type: 'header', template: 'Factorio Diagram' }
    {
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

@data = [
    {
      name: 'Recipe 1'
      count: 3
      speed: 1.5
      data: [
        {
          name: 'Input 1'
          count: 1
          speed: 1.5
        },
        {
          name: 'Output 1'
          count: 2
          speed: 3
        }
      ]
    }
  ]
