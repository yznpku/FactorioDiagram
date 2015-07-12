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