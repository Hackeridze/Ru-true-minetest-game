-- steel block fix
minetest.register_craft({
	output = 'default:steel_ingot 9',
	recipe = {
		{ 'default:steel_block'},
	}
})

-- char coal
minetest.register_craftitem("moarcraft_rtmmp:char_coal", {
	description = "Char coal",
	inventory_image = "default_coal_lump.png",
	groups = {coal = 1},
	stack_max = 128,
})
minetest.register_craft({
	type = "fuel",
	recipe = "moarcraft_rtmmp:char_coal",
	burntime = 40,
})
minetest.register_craft({
	type = "cooking",
	output = "moarcraft_rtmmp:char_coal",
	recipe = "default:tree",
})
minetest.register_craft({
	type = "cooking",
	output = "moarcraft_rtmmp:char_coal",
	recipe = "conifers:trunk",
})
minetest.register_craft({
	type = "cooking",
	output = "moarcraft_rtmmp:char_coal",
	recipe = "conifers:trunk_reversed",
})
minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'default:moarcraft_rtmmp:char_coal'},
		{'default:stick'},
	}
})
