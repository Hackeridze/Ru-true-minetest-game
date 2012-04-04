minetest.register_node("lazurite:lazurite_ore", {
	description = "Lazurite ore",
	tile_images = {"default_stone.png^lazurite_ore.png"},
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.2),
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "lazurite:lazurite 4"
})

minetest.register_node("lazurite:lazurite_block", {
	description = "Block of lazurite",
	tile_images = {"lazurite_block.png"},
	is_ground_content = true,
	material = minetest.digprop_stonelike(1.2),
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("lazurite:lazurite", {
	description = "Lazurite",
	image = "dye_blue.png",
	groups = {dye = 1}
})

minetest.register_craft({
	output = "lazurite:lazurite_block",
	recipe = {
		{ "lazurite:lazurite","lazurite:lazurite","lazurite:lazurite"},
		{ "lazurite:lazurite","lazurite:lazurite","lazurite:lazurite"},
		{ "lazurite:lazurite","lazurite:lazurite","lazurite:lazurite"},
	}
})

minetest.register_craft({
	output = "lazurite:lazurite 9",
	recipe = {
		{"lazurite:lazurite_block"},
	}
})
