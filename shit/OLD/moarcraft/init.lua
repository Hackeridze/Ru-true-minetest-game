minetest.register_craft({
    output = 'CraftItem "steel_ingot" 9',
    recipe = {
        {'NodeItem "steelblock"'},
    }
})

minetest.register_craft({
	output = 'NodeItem "wood" 4',
	recipe = {
		{'NodeItem "jungletree"'},
	}
})

minetest.register_craft({
	output = 'node "moarcraft:stone_brick" 4',
	recipe = {
		{'node "default:stone"','node "default:stone"'},
		{'node "default:stone"','node "default:stone"'},
	}
})

minetest.register_node("moarcraft:stone_brick", {
	tile_images = {"default_stone.png^moarcraft_stone_brick.png"},
	inventory_image = minetest.inventorycube("default_stone.png^moarcraft_stone_brick.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true, -- Texture atlas hint
	material = minetest.digprop_stonelike(1.7),
	dug_item = 'node "moarcraft:stone_brick" 1',
})

minetest.register_craftitem(":default:stick", {
	image = "default_stick.png",
	cookresult_itemstring = 'craft "moarcraft:ash" 1',
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem("moarcraft:ash", {
	image = "moarcraft_ash.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

print("[Moarcraft] Loaded!")
