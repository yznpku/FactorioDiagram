mod = 
  title: "Base"
  version: "0.11.22"
  enabled: true
  items:
    'raw_materials':
      'fuel': {}
      'stone': {}
      'iron_ore': {}
      'copper_ore': {}
      'coal': {}
      'raw_wood': {}
      'crude_oil': {}
      'water': {}
      'alien_artifact': {}

    'logistics':
      'wooden_chest': {}
      'iron_chest': {}
      'steel_chest': {}
      'smart_chest': {}
      'storage_tank': {}
      'transport_belt': {}
      'fast_transport_belt': {}
      'express_transport_belt': {}
      'underground_belt': {}
      'fast_underground_belt': {}
      'express_underground_belt': {}
      'splitter': {}
      'fast_splitter': {}
      'express_splitter': {}
      'burner_inserter': {}
      'inserter': {}
      'long_handed_inserter': {}
      'fast_inserter': {}
      'smart_inserter': {}
      'small_electric_pole': {}
      'medium_electric_pole': {}
      'big_electric_pole': {}
      'substation': {}
      'pipe': {}
      'pipe_to_ground': {}
      'small_pump': {}
      'staight_rail': {}
      'curved_rail': {}
      'train_stop': {}
      'rail_signal': {}
      'diesel_locomotive': {}
      'cargo_wagon': {}
      'car': {}
      'tank': {}
      'logistic_robot': {}
      'construction_robot': {}
      'active_provider_chest': {}
      'passive_provider_chest': {}
      'requester_chest': {}
      'storage_chest': {}
      'roboport': {}

    'production':
      'iron_axe': {}
      'steel_axe': {}
      'repair_pack': {}
      'blueprint': {}
      'deconstruction_planner': {}
      'boiler': {}
      'steam_engine': {}
      'lamp': {}
      'solar_panel': {}
      'basic_accumulator': {}
      'burner_mining_drill': {}
      'electric_mining_drill': {}
      'offshore_pump': {}
      'pumpjack': {}
      'stone_furnace': {}
      'steel_furnace': {}
      'electric_furnace': {}
      'assembling_machine_1': {}
      'assembling_machine_2': {}
      'assembling_machine_3': {}
      'oil_refinery': {}
      'chemical_plant': {}
      'lab': {}
      'basic_beacon': {}
      'speed_module': {}
      'speed_module_2': {}
      'speed_module_3': {}
      'efficiency_module': {}
      'efficiency_module_2': {}
      'efficiency_module_3': {}
      'productivity_module': {}
      'productivity_module_2': {}
      'productivity_module_3': {}

    'intermediate_products':
      'solid_fuel': {}
      'wood': {}
      'iron_plate': {}
      'copper_plate': {}
      'steel_plate': {}
      'stone_brick': {}
      'sulfur': {}
      'plastic_bar': {}
      'empty_barrel': {}
      'crude_oil_barrel': {}
      'iron_stick': {}
      'iron_gear_wheel': {}
      'electronic_circuit': {}
      'advanced_circuit': {}
      'processing_unit': {}
      'engine_unit': {}
      'electric_engine_unit': {}
      'explosives': {}
      'battery': {}
      'flying_robot_frame': {}
      'copper_cable': {}
      'red_wire': {}
      'green_wire': {}
      'science_pack_1': {}
      'science_pack_2': {}
      'science_pack_3': {}
      'alien_science_pack': {}
      'heavy_oil': {}
      'light_oil': {}
      'petroleum_gas': {}
      'surfuric_acid': {}
      'lubricant': {}

    'combat':
      'pistol': {}
      'submachine_gun': {}
      'shotgun': {}
      'combat_shotgun': {}
      'railgun': {}
      'rocket_launcher': {}
      'flamethrower': {}
      'land_mine': {}
      'regular_magazine': {}
      'piercing_rounds_magazine': {}
      'shotgun_shells': {}
      'piercing_shotgun_shells': {}
      'railgun_darts': {}
      'cannon_shells': {}
      'rocket': {}
      'explosive_rocket': {}
      'flamethrower_ammo': {}
      'basic_grenade': {}
      'poison_capsule': {}
      'slowdown_capsule': {}
      'defender_capsule': {}
      'distractor_capsule': {}
      'destroyer_capsule': {}
      'basic_electric_discharge_defense_remote': {}
      'iron_armor': {}
      'heavy_armor': {}
      'basic_modular_armor': {}
      'power_armor': {}
      'power_armor_mk2': {}
      'portable_solar_panel': {}
      'portable_fusion_reactor': {}
      'energy_shield': {}
      'energy_shield_mk2': {}
      'battery_mk1': {}
      'battery_mk2': {}
      'personal_laser_defense': {}
      'electric_discharge_defense': {}
      'basic_exoskeleton_equipment': {}
      'night_vision': {}
      'stone_wall': {}
      'gate': {}
      'gun_turret': {}
      'laser_turret': {}
      'radar': {}
      'rocket_defense': {}

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
    'wooden_chest':
      input:
        'wood': 4
      time: 0.5
    'iron_chest':
      input:
        'iron_plate': 8
      time: 0.5
    'steel_chest':
      input:
        'steel_plate': 8
      time: 0.5
    'smart_chest':
      input:
        'steel_chest': 1
        'electronic_circuit': 3
      time: 0.5
    'storage_tank':
      input:
        'iron_plate': 20
        'steel_plate': 5
      time: 3
    'transport_belt':
      input:
        'iron_plate': 1
        'iron_gear_wheel': 1
      output:
        'transport_belt': 2
      time: 0.5
    'fast_transport_belt':
      input:
        'iron_gear_wheel': 5
        'transport_belt': 1
      time: 0.5
    'express_transport_belt':
      input:
        'iron_gear_wheel': 5
        'fast_transport_belt': 1
        'lubricant': 2
      time: 0.5
    'underground_belt':
      input:
        'iron_plate': 10
        'transport_belt': 5
      output:
        'underground_belt': 2
      time: 1
    'fast_underground_belt':
      input:
        'iron_gear_wheel': 20
        'underground_belt': 2
      output:
        'fast_underground_belt': 2
      time: 0.5
    'express_underground_belt':
      input:
        'iron_gear_wheel': 40
        'fast_underground_belt': 2
      output:
        'express_underground_belt': 2
      time: 0.5
    'splitter':
      input:
        'electronic_circuit': 5
        'iron_plate': 5
        'transport_belt': 4
      time: 1
    'fast_splitter':
      input:
        'splitter': 1
        'iron_gear_wheel': 10
        'electronic_circuit': 10
      time: 2
    'express_splitter':
      input:
        'fast_splitter': 1
        'iron_gear_wheel': 10
        'advanced_circuit': 10
        'lubricant': 8
      time: 2
    'burner_inserter':
      input:
        'iron_plate': 1
        'iron_gear_wheel': 1
      time: 0.5
    'inserter':
      input:
        'electronic_circuit': 1
        'iron_gear_wheel': 1
        'iron_plate': 1
      time: 0.5
    'long_handed_inserter':
      input:
        'iron_gear_wheel': 1
        'iron_plate': 1
        'inserter': 1
      time: 0.5
    'fast_inserter':
      input:
        'electronic_circuit': 2
        'iron_plate': 2
        'inserter': 1
      time: 0.5
    'smart_inserter':
      input:
        'fast_inserter': 1
        'electronic_circuit': 4
      time: 0.5
    'small_electric_pole':
      input:
        'wood': 2
        'copper_cable': 2
      output:
        'small_electric_pole': 2
      time: 0.5
    'medium_electric_pole':
      input:
        'steel_plate': 2
        'copper_plate': 2
      time: 0.5
    'big_electric_pole':
      input:
        'steel_plate': 5
        'copper_plate': 5
      time: 0.5
    'substation':
      input:
        'steel_plate': 10
        'advanced_circuit': 5
        'copper_plate': 5
      time: 0.5
    'pipe':
      input:
        'iron_plate': 1
      time: 0.5
    'pipe_to_ground':
      input:
        'pipe': 10
        'iron_plate': 5
      output:
        'pipe_to_ground': 2
      time: 0.5
    'small_pump':
      input:
        'electric_engine_unit': 1
        'steel_plate': 1
        'pipe': 1
      time: 2
    'staight_rail':
      input:
        'stone': 1
        'iron_stick': 1
        'steel_plate': 1
      output:
        'staight_rail': 2
      time: 0.5
    'curved_rail':
      input:
        'stone': 4
        'iron_stick': 4
        'steel_plate': 4
      output:
        'curved_rail': 2
      time: 0.5
    'train_stop':
      input:
        'electronic_circuit': 5
        'iron_plate': 10
        'steel_plate': 3
      time: 0.5
    'rail_signal':
      input:
        'electronic_circuit': 1
        'iron_plate': 5
      time: 0.5
    'diesel_locomotive':
      input:
        'engine_unit': 20
        'electronic_circuit': 10
        'steel_plate': 30
      time: 0.5
    'cargo_wagon':
      input:
        'iron_gear_wheel': 10
        'iron_plate': 20
        'steel_plate': 20
      time: 0.5
    'car':
      input:
        'engine_unit': 8
        'iron_plate': 20
        'steel_plate': 5
      time: 0.5
    'tank':
      input:
        'engine_unit': 16
        'steel_plate': 50
        'iron_gear_wheel': 15
        'advanced_circuit': 5
      time: 0.5
    'logistic_robot':
      input:
        'flying_robot_frame': 1
        'advanced_circuit': 2
      time: 0.5
    'construction_robot':
      input:
        'flying_robot_frame': 1
        'electronic_circuit': 2
      time: 0.5
    'active_provider_chest':
      input:
        'smart_chest': 1
        'advanced_circuit': 1
      time: 0.5
    'passive_provider_chest':
      input:
        'smart_chest': 1
        'advanced_circuit': 1
      time: 0.5
    'requester_chest':
      input:
        'smart_chest': 1
        'advanced_circuit': 1
      time: 0.5
    'storage_chest':
      input:
        'smart_chest': 1
        'advanced_circuit': 1
      time: 0.5
    'roboport':
      input:
        'steel_plate': 45
        'iron_gear_wheel': 45
        'advanced_circuit': 45
      time: 15
    'iron_axe':
      input:
        'iron_stick': 2
        'iron_plate': 3
      time: 0.5
    'steel_axe':
      input:
        'steel_plate': 5
        'iron_stick': 2
      time: 0.5
    'repair_pack':
      input:
        'electronic_circuit': 1
        'iron_gear_wheel': 1
      time: 1
    'blueprint':
      input:
        'advanced_circuit': 1
      time: 1
    'deconstruction_planner':
      input:
        'advanced_circuit': 1
      time: 1
    'boiler':
      input:
        'stone_furnace': 1
        'pipe': 1
      time: 0.5
    'steam_engine':
      input:
        'iron_gear_wheel': 5
        'pipe': 5
        'iron_plate': 5
      time: 0.5
    'lamp':
      input:
        'electronic_circuit': 1
        'iron_stick': 3
        'iron_plate': 1
      time: 0.5
    'solar_panel':
      input:
        'steel_plate': 5
        'electronic_circuit': 15
        'copper_plate': 5
      time: 10
    'basic_accumulator':
      input:
        'iron_plate': 2
        'battery': 5
      time: 10
    'burner_mining_drill':
      input:
        'iron_gear_wheel': 3
        'stone_furnace': 1
        'iron_plate': 3
      time: 2
    'electric_mining_drill':
      input:
        'electronic_circuit': 3
        'iron_gear_wheel': 5
        'iron_plate': 10
      time: 2
    'offshore_pump':
      input:
        'electronic_circuit': 2
        'pipe': 1
        'iron_gear_wheel': 1
      time: 0.5
    'pumpjack':
      input:
        'steel_plate': 15
        'iron_gear_wheel': 10
        'electronic_circuit': 10
        'pipe': 10
      time: 20
    'stone_furnace':
      input:
        'stone': 5
      time: 0.5
    'steel_furnace':
      input:
        'steel_plate': 8
        'stone_brick': 10
      time: 3
    'electric_furnace':
      input:
        'steel_plate': 15
        'advanced_circuit': 5
        'stone_brick': 10
      time: 5
    'assembling_machine_1':
      input:
        'electronic_circuit': 3
        'iron_gear_wheel': 5
        'iron_plate': 9
      time: 0.5
    'assembling_machine_2':
      input:
        'iron_plate': 9
        'electronic_circuit': 3
        'iron_gear_wheel': 5
        'assembling_machine_1': 1
      time: 0.5
    'assembling_machine_3':
      input:
        'speed_module': 4
        'assembling_machine_2': 2
      time: 0.5
    'oil_refinery':
      input:
        'steel_plate': 15
        'iron_gear_wheel': 10
        'stone_brick': 10
        'electronic_circuit': 10
        'pipe': 10
      time: 20
    'chemical_plant':
      input:
        'steel_plate': 5
        'iron_gear_wheel': 5
        'electronic_circuit': 5
        'pipe': 5
      time: 10
    'lab':
      input:
        'electronic_circuit': 10
        'iron_gear_wheel': 10
        'transport_belt': 4
      time: 5
    'basic_beacon':
      input:
        'electronic_circuit': 20
        'advanced_circuit': 20
        'steel_plate': 10
        'copper_cable': 10
      time: 15
    'speed_module':
      input:
        'advanced_circuit': 5
        'electronic_circuit': 5
      time: 15
    'speed_module_2':
      input:
        'speed_module': 4
        'processing_unit': 5
        'advanced_circuit': 5
      time: 30
    'speed_module_3':
      input:
        'speed_module_2': 4
        'advanced_circuit': 5
        'processing_unit': 5
        'alien_artifact': 1
      time: 60
    'efficiency_module':
      input:
        'advanced_circuit': 5
        'electronic_circuit': 5
      time: 15
    'efficiency_module_2':
      input:
        'efficiency_module': 4
        'advanced_circuit': 5
        'processing_unit': 5
      time: 30
    'efficiency_module_3':
      input:
        'efficiency_module_2': 5
        'advanced_circuit': 5
        'processing_unit': 5
        'alien_artifact': 1
      time: 60
    'productivity_module':
      input:
        'advanced_circuit': 5
        'electronic_circuit': 5
      time: 15
    'productivity_module_2':
      input:
        'productivity_module': 4
        'advanced_circuit': 5
        'processing_unit': 5
      time: 30
    'productivity_module_3':
      input:
        'productivity_module_2': 5
        'advanced_circuit': 5
        'processing_unit': 5
        'alien_artifact': 1
      time: 60
    

    

    'copper_plate':
      crafting_station: 'furnace'
      input:
        'copper_ore': 1
      time: 3.5
    'copper_cable':
      input:
        'copper_plate': 1
      output:
        'copper_cable': 2
      time: 0.5
    'electronic_circuit':
      input: 
        'iron_plate': 1
        'copper_cable': 3
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
      input:
        'plastic_bar': 2
        'electronic_circuit': 2
        'copper_cable': 4
      time: 8


mods.push mod