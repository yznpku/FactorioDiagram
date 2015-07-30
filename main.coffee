mod_loader.reload()
[recipe_count, raw_count, product_count] = calculation.solve_order { 'science_pack_3': 1 }
webix.ready ->
  webix.protoUI { name: "activeList" }, webix.ui.list, webix.ActiveContent
  webix.ui main_ui
  $$('recipe_config').parse ui.build_recipe_data recipes
  $$('result_tree').parse ui.build_result_data recipe_count