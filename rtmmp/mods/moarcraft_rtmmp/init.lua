minetest.register_craft({
	output = 'node "moarcraft_rtmmp:stone_brick" 4',
	recipe = {
		{'node "default:stone"','node "default:stone"'},
		{'node "default:stone"','node "default:stone"'},
	}
})

minetest.register_node("moarcraft_rtmmp:stone_brick", {
	tile_images = {"default_stone.png^moarcraft_rtmmp_stone_brick.png"},
	inventory_image = minetest.inventorycube("default_stone.png^moarcraft_rtmmp_stone_brick.png"),
	paramtype = "mineral",
	is_ground_content = true,
	often_contains_mineral = true, -- Texture atlas hint
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'default:steel_ingot 9',
	recipe = {
		{ 'default:steel_block'},
	}
})
