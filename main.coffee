@order = { 'science_pack_3': 1 }
@main =
  refresh_result: ->
    [recipe_count, raw_count, product_count] = calculation.solve_order order
    result_tree = $$ 'result_tree'
    result_tree.clearAll()
    result_tree.parse ui.build_result_data recipe_count
    result_tree.sort '#name#';
    result_tree.markSorting 'name', 'asc'
  refresh_recipes: ->
    recipe_config = $$ 'recipe_config'
    recipe_config.clearAll()
    recipe_config.parse ui.build_recipe_data recipes
    recipe_config.sort '#name'
    recipe_config.markSorting 'name', 'asc'

mod_loader.reload()
webix.ready ->
  webix.ui main_ui
  main.refresh_recipes()
  main.refresh_result()
