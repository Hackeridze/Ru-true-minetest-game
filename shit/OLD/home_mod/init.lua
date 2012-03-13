minetest.register_craft({
	output = 'craft "home_mod:rose_petal" 6',
	recipe = {
		{'node "flowers:flower_rose"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:dandelion_yellow_petal" 6',
	recipe = {
		{'node "flowers:flower_dandelion_yellow"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:dandelion_white_petal" 6',
	recipe = {
		{'node "flowers:flower_dandelion_white"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:tulip_petal" 6',
	recipe = {
		{'node "flowers:flower_tulip"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:viola_petal" 6',
	recipe = {
		{'node "flowers:flower_viola"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:can" 1',
	recipe = {
		{'craft "steel_ingot"', "", 'craft "steel_ingot"'},
		{'craft "steel_ingot"', "", 'craft "steel_ingot"'},
		{'craft "steel_ingot"', 'craft "steel_ingot"', 'craft "steel_ingot"'}
	}
})


minetest.register_craft({
	output = 'craft "home_mod:rose_can" 1',
	recipe = {
		{"craft home_mod:rose_petal"},
		{'craft "home_mod:can"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:tulip_can" 1',
	recipe = {
		{"craft home_mod:tulip_petal"},
		{'craft "home_mod:can"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:viola_can" 1',
	recipe = {
		{"craft home_mod:viola_petal"},
		{'craft "home_mod:can"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:dandelion_yellow_can" 1',
	recipe = {
		{"craft home_mod:dandelion_yellow_petal"},
		{'craft "home_mod:can"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:dandelion_white_can" 1',
	recipe = {
		{"craft home_mod:dandelion_white_petal"},
		{'craft "home_mod:can"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:chisel" 1',
	recipe = {
		{'craft "default:steel_ingot"', 'craft "default:steel_ingot"', 'craft "default:steel_ingot"'},
		{'' , 'craft "default:steel_ingot"', '' },
		{'' , 'craft "default:stick"', '' }
	}
})

minetest.register_craft({
	output = 'node "default:mossycobble" 1',
	recipe = {
		{'craft "bucket:bucket_water"'},
		{'craft "home_mod:moss"' },
		{'node "default:cobble"' }
	}
})

minetest.register_craft({
	output = 'node "home_mod:white_wallpaper" 1',
	recipe = {
		{'craft "default:paper"'},
	}
})

minetest.register_craft({
	output = 'craft "home_mod:scoop" 1',
	recipe = {
		{'craft "default:steel_ingot"', 'craft "default:steel_ingot"', 'craft "default:steel_ingot"'},
		{'craft "default:steel_ingot"', 'craft "default:steel_ingot"', 'craft "default:steel_ingot"'},
		{'' , 'craft "default:stick"', '' }
	}
})

minetest.register_craft({
	output = 'node "home_mod:dustbin" 1',
	recipe = {
		{'node "default:cactus"', 'node "default:cactus"', 'node "default:cactus"'},
		{'node "default:cactus"', '', 'node "default:cactus"' },
		{'node "default:cactus"', 'node "default:cactus"', 'node "default:cactus"' }
	}
})

minetest.register_craft({
	output = 'node "home_mod:glass_pane" 1',
	recipe = {
		{'node "default:glass"', 'node "default:glass"', 'node "default:glass"'},
		{'node "default:glass"', 'node "default:glass"', 'node "default:glass"'}
	}
})

minetest.register_craft({
	output = 'node "home_mod:fireplace" 1',
	recipe = {
		{'node "default:brick"', 'node "default:brick"', 'node "default:brick"'},
		{'node "default:brick"', 'node "default:torch"', 'node "default:brick"'},
		{'node "default:brick"', 'node "default:brick"', 'node "default:brick"'},
	}
})


----------------------------


minetest.register_node("home_mod:red_wallpaper", {
	drawtype = "signlike",
	tile_images = {"red_wallpaper.png"},
	inventory_image = "red_wallpaper.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	dug_item = 'node "home_mod:red_wallpaper" 1',
	material = minetest.digprop_constanttime(0.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:yellow_wallpaper", {
	drawtype = "signlike",
	tile_images = {"yellow_wallpaper.png"},
	inventory_image = "yellow_wallpaper.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	dug_item = 'node "home_mod:yellow_wallpaper" 1',
	material = minetest.digprop_constanttime(0.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:violet_wallpaper", {
	drawtype = "signlike",
	tile_images = {"violet_wallpaper.png"},
	inventory_image = "violet_wallpaper.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	dug_item = 'node "home_mod:violet_wallpaper" 1',
	material = minetest.digprop_constanttime(0.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:orange_wallpaper", {
	drawtype = "signlike",
	tile_images = {"orange_wallpaper.png"},
	inventory_image = "orange_wallpaper.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	dug_item = 'node "home_mod:orange_wallpaper" 1',
	material = minetest.digprop_constanttime(0.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:white_wallpaper", {
	drawtype = "signlike",
	tile_images = {"white_wallpaper.png"},
	inventory_image = "white_wallpaper.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	dug_item = 'node "home_mod:white_wallpaper" 1',
	material = minetest.digprop_constanttime(0.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:glass_pane", {
	drawtype = "signlike",
	tile_images = {"default_glass.png"},
	inventory_image = "default_glass.png",
	paramtype = "light",
	wall_mounted = true,
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = true,
	dug_item = 'node "home_mod:glass_pane" 1',
	material = minetest.digprop_glasslike(1.0),
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	furnace_burntime = -1,
})

minetest.register_node("home_mod:dustbin", {
	tile_images = {"dustbin_top.png", "dustbin_down.png", "dustbin_side.png",
		"dustbin_side.png", "dustbin_back.png", "dustbin_front.png"},
	inventory_image = minetest.inventorycube("dustbin_top.png", "dustbin_front.png", "dustbin_side.png"),
	paramtype = "facedir_simple",
	metadata_name = "chest",
	material = minetest.digprop_woodlike(1.0),
	furnace_burntime = 30,
})

minetest.register_node("home_mod:fireplace", {
	tile_images = {"default_brick.png", "default_brick.png", "default_brick.png",
		"default_brick.png", "default_brick.png", "default_brick.png^fireplace_front.png"},
	inventory_image = minetest.inventorycube("default_brick.png", "default_brick.png^fireplace_front.png", "default_brick.png"),
	paramtype = "facedir_simple",
	light_source = LIGHT_MAX,
	material = minetest.digprop_stonelike(3.0),
	furnace_burntime = -1,
})

minetest.register_node("home_mod:red_cobble", {
	tile_images = {"red_cobble.png"},
	inventory_image = minetest.inventorycube("red_cobble.png"),
	is_ground_content = true,
	cookresult_itemstring = 'node "home_mod:red_stone" 1',
	material = minetest.digprop_stonelike(0.9),
})

minetest.register_node("home_mod:orange_cobble", {
	tile_images = {"orange_cobble.png"},
	inventory_image = minetest.inventorycube("orange_cobble.png"),
	is_ground_content = true,
	cookresult_itemstring = 'node "home_mod:orange_stone" 1',
	material = minetest.digprop_stonelike(0.9),
})

minetest.register_node("home_mod:white_cobble", {
	tile_images = {"white_cobble.png"},
	inventory_image = minetest.inventorycube("white_cobble.png"),
	is_ground_content = true,
	cookresult_itemstring = 'node "home_mod:white_stone" 1',
	material = minetest.digprop_stonelike(0.9),
})

minetest.register_node("home_mod:yellow_cobble", {
	tile_images = {"yellow_cobble.png"},
	inventory_image = minetest.inventorycube("yellow_cobble.png"),
	is_ground_content = true,
	cookresult_itemstring = 'node "home_mod:yellow_stone" 1',
	material = minetest.digprop_stonelike(0.9),
})

minetest.register_node("home_mod:violet_cobble", {
	tile_images = {"violet_cobble.png"},
	inventory_image = minetest.inventorycube("violet_cobble.png"),
	is_ground_content = true,
	cookresult_itemstring = 'node "home_mod:violet_stone" 1',
	material = minetest.digprop_stonelike(0.9),
})

minetest.register_node("home_mod:red_stone", {
	tile_images = {"red_stone.png"},
	inventory_image = minetest.inventorycube("red_stone.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'node "red_cobble" 1',
})

minetest.register_node("home_mod:orange_stone", {
	tile_images = {"orange_stone.png"},
	inventory_image = minetest.inventorycube("orange_stone.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'node "orange_cobble" 1',
})

minetest.register_node("home_mod:white_stone", {
	tile_images = {"white_stone.png"},
	inventory_image = minetest.inventorycube("white_stone.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'node "white_cobble" 1',
})

minetest.register_node("home_mod:violet_stone", {
	tile_images = {"violet_stone.png"},
	inventory_image = minetest.inventorycube("violet_stone.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'node "violet_cobble" 1',
})

minetest.register_node("home_mod:yellow_stone", {
	tile_images = {"yellow_stone.png"},
	inventory_image = minetest.inventorycube("yellow_stone.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'node "yellow_cobble" 1',
})

minetest.register_node("home_mod:yellow_brick", {
	tile_images = {"yellow_brick.png"},
	inventory_image = minetest.inventorycube("yellow_brick.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'craft "default:clay_brick" 4',
})

minetest.register_node("home_mod:violet_brick", {
	tile_images = {"violet_brick.png"},
	inventory_image = minetest.inventorycube("violet_brick.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'craft "default:clay_brick" 4',
})

minetest.register_node("home_mod:white_brick", {
	tile_images = {"white_brick.png"},
	inventory_image = minetest.inventorycube("white_brick.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'craft "default:clay_brick" 4',
})

minetest.register_node("home_mod:orange_brick", {
	tile_images = {"orange_brick.png"},
	inventory_image = minetest.inventorycube("orange_brick.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.0),
	dug_item = 'craft "default:clay_brick" 4',
})

minetest.register_node("home_mod:red_fence_wood", {
	drawtype = "fencelike",
	tile_images = {"red_wood.png"},
	inventory_image = "red_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	furnace_burntime = 15,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:orange_fence_wood", {
	drawtype = "fencelike",
	tile_images = {"orange_wood.png"},
	inventory_image = "orange_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	furnace_burntime = 15,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:yellow_fence_wood", {
	drawtype = "fencelike",
	tile_images = {"yellow_wood.png"},
	inventory_image = "yellow_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	furnace_burntime = 15,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:white_fence_wood", {
	drawtype = "fencelike",
	tile_images = {"white_wood.png"},
	inventory_image = "white_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	furnace_burntime = 15,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:violet_fence_wood", {
	drawtype = "fencelike",
	tile_images = {"violet_wood.png"},
	inventory_image = "violet_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	furnace_burntime = 15,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:red_tree", {
	tile_images = {"red_tree_top.png", "red_tree_top.png", "red_tree.png"},
	inventory_image = minetest.inventorycube("red_tree_top.png", "red_tree.png", "red_tree.png"),
	is_ground_content = true,
	material = minetest.digprop_woodlike(1.0),
	cookresult_itemstring = 'craft "default:coal_lump" 1',
	furnace_burntime = 30,
})

minetest.register_node("home_mod:orange_tree", {
	tile_images = {"orange_tree_top.png", "orange_tree_top.png", "orange_tree.png"},
	inventory_image = minetest.inventorycube("orange_tree_top.png", "orange_tree.png", "orange_tree.png"),
	is_ground_content = true,
	material = minetest.digprop_woodlike(1.0),
	cookresult_itemstring = 'craft "default:coal_lump" 1',
	furnace_burntime = 30,
})

minetest.register_node("home_mod:violet_tree", {
	tile_images = {"violet_tree_top.png", "violet_tree_top.png", "violet_tree.png"},
	inventory_image = minetest.inventorycube("violet_tree_top.png", "violet_tree.png", "violet_tree.png"),
	is_ground_content = true,
	material = minetest.digprop_woodlike(1.0),
	cookresult_itemstring = 'craft "default:coal_lump" 1',
	furnace_burntime = 30,
})

minetest.register_node("home_mod:white_tree", {
	tile_images = {"white_tree_top.png", "white_tree_top.png", "white_tree.png"},
	inventory_image = minetest.inventorycube("white_tree_top.png", "white_tree.png", "white_tree.png"),
	is_ground_content = true,
	material = minetest.digprop_woodlike(1.0),
	cookresult_itemstring = 'craft "default:coal_lump" 1',
	furnace_burntime = 30,
})

minetest.register_node("home_mod:yellow_tree", {
	tile_images = {"yellow_tree_top.png", "yellow_tree_top.png", "yellow_tree.png"},
	inventory_image = minetest.inventorycube("yellow_tree_top.png", "yellow_tree.png", "yellow_tree.png"),
	is_ground_content = true,
	material = minetest.digprop_woodlike(1.0),
	cookresult_itemstring = 'craft "default:coal_lump" 1',
	furnace_burntime = 30,
})

minetest.register_node("home_mod:red_wood", {
	tile_images = {"red_wood.png"},
	inventory_image = minetest.inventorycube("red_wood.png"),
	is_ground_content = true,
	furnace_burntime = 7,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:yellow_wood", {
	tile_images = {"yellow_wood.png"},
	inventory_image = minetest.inventorycube("yellow_wood.png"),
	is_ground_content = true,
	furnace_burntime = 7,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:white_wood", {
	tile_images = {"white_wood.png"},
	inventory_image = minetest.inventorycube("white_wood.png"),
	is_ground_content = true,
	furnace_burntime = 7,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:violet_wood", {
	tile_images = {"violet_wood.png"},
	inventory_image = minetest.inventorycube("violet_wood.png"),
	is_ground_content = true,
	furnace_burntime = 7,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:orange_wood", {
	tile_images = {"orange_wood.png"},
	inventory_image = minetest.inventorycube("orange_wood.png"),
	is_ground_content = true,
	furnace_burntime = 7,
	material = minetest.digprop_woodlike(0.75),
})

minetest.register_node("home_mod:red_steelblock", {
	tile_images = {"red_steel_block.png"},
	inventory_image = minetest.inventorycube("red_steel_block.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(5.0),
})

minetest.register_node("home_mod:yellow_steelblock", {
	tile_images = {"yellow_steel_block.png"},
	inventory_image = minetest.inventorycube("yellow_steel_block.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(5.0),
})

minetest.register_node("home_mod:orange_steelblock", {
	tile_images = {"orange_steel_block.png"},
	inventory_image = minetest.inventorycube("orange_steel_block.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(5.0),
})

minetest.register_node("home_mod:violet_steelblock", {
	tile_images = {"violet_steel_block.png"},
	inventory_image = minetest.inventorycube("violet_steel_block.png"),
	is_ground_content = true,
	material = minetest.digprop_stonelike(5.0),
})



--------------------------------------

minetest.register_craftitem("home_mod:moss", {
	image = "moss.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem("home_mod:rose_petal", {
	image = "rose_petal.png",
	on_place_on_ground = minetest.craftitem_place_item,

})

minetest.register_craftitem("home_mod:dandelion_white_petal", {
	image = "dandelion_white_petal.png",
	on_place_on_ground = minetest.craftitem_place_item,

})

minetest.register_craftitem("home_mod:viola_petal", {
	image = "viola_petal.png",
	on_place_on_ground = minetest.craftitem_place_item,

})

minetest.register_craftitem("home_mod:tulip_petal", {
	image = "tulip_petal.png",
	on_place_on_ground = minetest.craftitem_place_item,

})

minetest.register_craftitem("home_mod:dandelion_yellow_petal", {
	image = "dandelion_yellow_petal.png",
	on_place_on_ground = minetest.craftitem_place_item,

})

minetest.register_craftitem("home_mod:rose_can", {
    image = "rose_can.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:%a-_wallpaper") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:red_wallpaper", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-wood") ~= nil then
		if string.match(n.name, "%a-fence_wood") ~= nil then
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:red_fence_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		else
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:red_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		end
		return true
            elseif string.match(n.name, "%a-cobble") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:red_cobble", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-steelblock") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:red_steelblock", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-stone") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:red_stone", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-tree") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:red_tree", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-brick") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="default:brick", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            end
        end
        return false
    end,
})

minetest.register_craftitem("home_mod:dandelion_yellow_can", {
    image = "dandelion_yellow_can.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:%a-_wallpaper") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_wallpaper", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-wood") ~= nil then
		if string.match(n.name, "%a-fence_wood") ~= nil then
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_fence_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		else
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		end
		return true	
            elseif string.match(n.name, "%a-cobble") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_cobble", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-steelblock") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_steelblock", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-stone") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_stone", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-tree") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_tree", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-brick") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:yellow_brick", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            end
        end
        return false
    end,
})

minetest.register_craftitem("home_mod:tulip_can", {
    image = "tulip_can.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:%a-_wallpaper") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_wallpaper", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-wood") ~= nil then
		if string.match(n.name, "%a-fence_wood") ~= nil then
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_fence_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		else
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		end
		return true
            elseif string.match(n.name, "%a-cobble") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_cobble", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-steelblock") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_steelblock", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-stone") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_stone", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-tree") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_tree", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-brick") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:orange_brick", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            end
        end
        return false
    end,
})

minetest.register_craftitem("home_mod:viola_can", {
    image = "viola_can.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:%a-_wallpaper") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_wallpaper", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-wood") ~= nil then
		if string.match(n.name, "%a-fence_wood") ~= nil then
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_fence_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		else
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		end
		return true
            elseif string.match(n.name, "%a-cobble") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_cobble", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-steelblock") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_steelblock", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-stone") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_stone", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-tree") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_tree", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-brick") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:violet_brick", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            end
        end
        return false
    end,
})

minetest.register_craftitem("home_mod:dandelion_white_can", {
    image = "dandelion_white_can.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:%a-_wallpaper") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:white_wallpaper", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-wood") ~= nil then
		if string.match(n.name, "%a-fence_wood") ~= nil then
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:white_fence_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		else
                	minetest.env:remove_node(pointed_thing)
                	minetest.env:add_node(pointed_thing.under, {name="home_mod:white_wood"})
                	player:add_to_inventory_later('craft "home_mod:can" 1')
		end
		return true
            elseif string.match(n.name, "%a-cobble") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:white_cobble", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-steelblock") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="default:steelblock", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-stone") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:white_stone", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-tree") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:white_tree", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            elseif string.match(n.name, "%a-brick") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:white_brick", param2=n.param2})
                player:add_to_inventory_later('craft "home_mod:can" 1')
                return true
            end
        end
        return false
    end,
})


minetest.register_craftitem("home_mod:chisel", {
	image = "chisel.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = function(item, player, pointed_thing)
		if pointed_thing.type == "node" then
			n = minetest.env:get_node(pointed_thing.under)
			if n.name == "default:mossycobble" then
				minetest.env:add_node(pointed_thing.under, {name="default:cobble", param2=n.param2})
				player:add_to_inventory_later('craft "home_mod:moss" 1')
            		elseif string.match(n.name, "%a-wood") ~= nil then
				if string.match(n.name, "%a-fence_wood") ~= nil then
                			minetest.env:add_node(pointed_thing.under, {name="default:fence_wood", param2=n.param2})
				else
                			minetest.env:add_node(pointed_thing.under, {name="default:wood", param2=n.param2})
				end
            		elseif string.match(n.name, "%a-cobble") ~= nil then
                		minetest.env:add_node(pointed_thing.under, {name="default:cobble", param2=n.param2})
            		elseif string.match(n.name, "%a-steelblock") ~= nil then
                		minetest.env:add_node(pointed_thing.under, {name="default:steelblock", param2=n.param2})
            		elseif string.match(n.name, "%a-stone") ~= nil then
                		minetest.env:add_node(pointed_thing.under, {name="default:stone", param2=n.param2})
            		elseif string.match(n.name, "%a-tree") ~= nil then
                		minetest.env:add_node(pointed_thing.under, {name="default:tree", param2=n.param2})
            		elseif string.match(n.name, "%a-brick") ~= nil then
                		minetest.env:add_node(pointed_thing.under, {name="default:brick", param2=n.param2})
			end
		end
		return false
	end,
})

minetest.register_craftitem("home_mod:can", {
	image = "can.png",
	on_place_on_ground = minetest.craftitem_place_item,
})


minetest.register_craftitem("home_mod:scoop", {
    image = "scoop.png",
    on_place_on_ground = minetest.craftitem_place_item,
    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            n = minetest.env:get_node(pointed_thing.under)
            if string.match(n.name, "home_mod:dustbin") ~= nil then
                minetest.env:remove_node(pointed_thing)
                minetest.env:add_node(pointed_thing.under, {name="home_mod:dustbin", param2=n.param2})
            end
        end
        return false
    end,

})



print("[Home mod] Loaded!")
