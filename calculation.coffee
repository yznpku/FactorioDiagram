filter_recipes_with_certain_output = (recipes, output_id) ->
  utils.filter recipes, (recipe_id, recipe) ->
    !$.isEmptyObject utils.filter recipe.output, (single_output, count) -> single_output == output_id
filter_recipes_with_certain_input = (recipes, input_id) ->
  utils.filter recipes, (recipe_id, recipe) ->
    !$.isEmptyObject utils.filter recipe.input, (single_input, count) -> single_input == input_id

@calculation =
  related_recipes_and_items: (order) ->
    related_recipes = {}
    related_items = {}
    items_queued = {}
    q = new Queue()
    $.each order, (item, count) -> q.enqueue item
    while !q.isEmpty()
      output = q.dequeue()
      related_items[output] = items[output]
      items_queued[output] = items[output]
      recipes_with_output = filter_recipes_with_certain_output recipes, output
      $.each recipes_with_output, (recipe_id, recipe) ->
        related_recipes[recipe_id] = recipe
        $.each recipe.input, (input, count) ->
          if !items_queued[input]?
            q.enqueue input
          related_items[input] = items[input]
        $.each recipe.output, (output, count) ->
          related_items[output] = items[output]
    [related_recipes, related_items]

  # classify items into three groups
  # - raw:          items without any recipes that use it as output
  # - product:      items without any recipes that use it as input
  # - intermediate: other items, both consumed and produced
  classify_items: (related_recipes, related_items) ->
    raw = utils.filter related_items, (item_id, item) ->
      $.isEmptyObject filter_recipes_with_certain_output related_recipes, item_id
    product = utils.filter related_items, (item_id, item) ->
      $.isEmptyObject filter_recipes_with_certain_input related_recipes, item_id
    intermediate = utils.filter related_items, (item_id, item) ->
      !(raw[item_id]? || product[item_id]?)
    [raw, product, intermediate]

  solve_order: (order) ->
    [related_recipes, related_items] = calculation.related_recipes_and_items order
    [raw, product, intermediate] = calculation.classify_items related_recipes, related_items
    related_recipes_array = $.map related_recipes, (recipe, recipe_id) -> recipe_id
    intermediate_array = $.map intermediate, (item, item_id) -> item_id
    order_product_array = $.map order, (count, item_id) -> item_id
    calculation_item_array = utils.join_array intermediate_array, order_product_array

    console.log [related_recipes_array.length, calculation_item_array.length]
    index_of_recipe = {}
    $.each related_recipes_array, (index, recipe_id) -> index_of_recipe[recipe_id] = index
    index_of_item = {}
    $.each calculation_item_array, (index, item_id) -> index_of_item[item_id] = index

    N = related_recipes_array.length
    A = numeric.rep [N, N], 0
    B = numeric.rep [N], 0

    $.each calculation_item_array, (item_index, item_id) ->
      producing_recipes = filter_recipes_with_certain_output related_recipes, item_id
      consuming_recipes = filter_recipes_with_certain_input  related_recipes, item_id
      $.each producing_recipes, (recipe_id, recipe) ->
        A[item_index][index_of_recipe[recipe_id]] = recipe.output[item_id] / recipe.time
      $.each consuming_recipes, (recipe_id, recipe) ->
        A[item_index][index_of_recipe[recipe_id]] = -recipe.input[item_id] / recipe.time
      B[item_index] = 0
    $.each order, (item_id, count) ->
      B[index_of_item[item_id]] = count
    x = numeric.solve A, B

    recipe_count = {}
    $.each x, (index, count) ->
      recipe_count[related_recipes_array[index]] = count
    raw_count = {}
    product_count = {}
    $.each raw, (item_id, item) ->
      raw_count[item_id] = 0
      consuming_recipes = filter_recipes_with_certain_input related_recipes, item_id
      $.each consuming_recipes, (recipe_id, recipe) ->
        raw_count[item_id] += recipe_count[recipe_id] * recipe.input[item_id] / recipe.time
    $.each ($.extend ($.extend {}, order), product), (item_id, item) ->
      product_count[item_id] = 0
      producing_recipes = filter_recipes_with_certain_output related_recipes, item_id
      consuming_recipes = filter_recipes_with_certain_input related_recipes, item_id
      $.each producing_recipes, (recipe_id, recipe) ->
        product_count[item_id] += recipe_count[recipe_id] * recipe.output[item_id] / recipe.time
      $.each consuming_recipes, (recipe_id, recipe) ->
        product_count[item_id] -= recipe_count[recipe_id] * recipe.input[item_id] / recipe.time

    [recipe_count, raw_count, product_count]

  build_recipe_data: (recipe_count) ->
    data = []
    $.each recipe_count, (recipe_id, absolute_recipe_count) ->
      recipe = recipes[recipe_id]
      recipe_data =
        name: recipe.crafting_station + ': ' + recipe_id
        count: +absolute_recipe_count.toFixed 3
        open: true
        data: []
      $.each recipe.input, (input_id, input_count) ->
        recipe_data.data.push
          name: 'Input: ' + input_id + ' * ' + input_count
          speed: +(input_count * absolute_recipe_count / recipe.time).toFixed 3
      $.each recipe.output, (output_id, output_count) ->
        recipe_data.data.push
          name: 'Output: ' + output_id + ' * ' + output_count
          speed: +(output_count * absolute_recipe_count / recipe.time).toFixed 3
      data.push recipe_data
    data