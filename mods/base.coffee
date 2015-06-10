mod = 
  title: "Base"
  version: "0.11.22"
  enabled: true
  items:
    'raw_materials':
      'fuel':
        name: 'Fuel'
      'copper_ore':
        name: 'Copper Ore'
      'coal':
        name: 'Coal'
      'crude_oil':
        name: 'Crude Oil'
      'water':
        name: 'Water'
      
    'intermediate_products':
      'copper_plate':
        name: 'Copper Plate'
      'copper_cable':
        name: 'Copper Cable'
      'iron_plate':
        name: 'Iron Plate'
      'electronic_circuit':
        name: 'Electronic Circuit'
      'advanced_circuit':
        name: 'Advanced Circuit'
      'plastic_bar':
        name: 'Plastic Bar'
      'heavy_oil':
        name: 'Heavy Oil'
      'light_oil':
        name: 'Light Oil'
      'petroleum_gas':
        name: 'Petroleum Gas'

  crafting_stations:
    'assembling_machine':
      types: [
        { name: 'Assembling Machine 1', speed: 0.5, max_ingredients: 2 }
        { name: 'Assembling Machine 2', speed: 0.75 }
        { name: 'Assembling Machine 3', speed: 1.25 }
      ]
    'furnace':
      types: [
        { name: 'Stone Furnace', speed: 1, burner_power: 0.18 }
        { name: 'Steel Furnace', speed: 2, burner_power: 0.18 }
        { name: 'Electric Furnace', speed: 2 }
      ]
    'oil_refinery':
      types: [{ name: 'Oil Refinery', speed: 1 }]
    'chemical_plant':
      types: [{ name: 'Chemical Plant', speed: 1.25 }]
  recipes:
    'copper_plate':
      crafting_station: 'furnace'
      input:
        'copper_ore': 1
      output:
        'copper_plate': 1
      time: 3.5
    'copper_cable':
      crafting_station: 'assembling_machine'
      input:
        'copper_plate': 1
      output:
        'copper_cable': 2
      time: 0.5
    'electronic_circuit':
      name: 'Electronic Circuit'
      crafting_station: 'assembling_machine'
      input: 
        'iron_plate': 1
        'copper_cable': 3
      output:
        'electronic_circuit': 1
      time: 0.5
    'basic_oil_processing':
      crafting_station: 'oil_refinery'
      input:
        'crude_oil': 10
      output:
        'heavy_oil': 3
        'light_oil': 3
        'petroleum_gas': 4
      time: 5
    'heavy_oil_cracking_to_light_oil':
      crafting_station: 'chemical_plant'
      input:
        'heavy_oil': 4
        'water': 3
      output:
        'light_oil': 3
      time: 5
    'light_oil_cracking_to_petroleum_gas':
      crafting_station: 'chemical_plant'
      input:
        'light_oil': 3
        'water': 3
      output:
        'petroleum_gas': 2
      time: 5
    'plastic_bar':
      crafting_station: 'chemical_plant'
      input:
        'coal': 1
        'petroleum_gas': 3
      output:
        'plastic_bar': 2
      time: 1
    'advanced_circuit':
      crafting_station: 'assembling_machine'
      input:
        'plastic_bar': 2
        'electronic_circuit': 2
        'copper_cable': 4
      output:
        'advanced_circuit': 1
      time: 8


mods.push mod