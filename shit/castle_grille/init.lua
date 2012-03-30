local GRILLE_HEIGHT = 3;

local grilles_to_remove = {}

minetest.register_node("castle_grille:mechanism", {
	description = "Grille mechanism",
	tile_images = {"default_steel_block.png"},
	is_ground_content = true,
	material = minetest.digprop_stonelike(30.0),
})

minetest.register_node("castle_grille:grille", {
	description = "Grille",
	drawtype = "fencelike",
	tile_images = {"default_steel_block.png"},
	is_ground_content = true,
	material = minetest.digprop_stonelike(1000.0),
	drop = "",
})

local function add_down(node,pos)
	for i = 1, GRILLE_HEIGHT do
		local current_pos = {x = pos.x, y = pos.y - i, z = pos.z}
		local current_node = minetest.env:get_node(current_pos)
		if current_node.name == "air" then
			minetest.env:remove_node(current_pos)
			minetest.env:add_node(current_pos, {name = "castle_grille:grille"})
		else
			return
		end
	end
end

local function remove_up(node,pos)
	for i = 1, GRILLE_HEIGHT do
		local current_pos = {x = pos.x, y = pos.y - i, z = pos.z}
		local current_node = minetest.env:get_node(current_pos)
		if current_node.name == "castle_grille:grille" then
			table.insert(grilles_to_remove,{pos = current_pos, time = GRILLE_HEIGHT - i + 1})
		else
			return
		end
	end
end

mesecon:register_on_signal_on(function (pos, node)
	if node.name == "castle_grille:mechanism" then
		add_down(node,pos)
	end
end)

mesecon:register_on_signal_off(function (node,pos)
	if node.name == "castle_grille:mechanism" then
		remove_up(node,pos)
	end
end)

local delta = 0
minetest.register_globalstep(function(dtime)
	delta = delta + dtime
	while delta >= 3 do
		delta = delta - 3
		for num, grille in ipairs(grilles_to_remove) do
			if grille.time == 1 then 
				minetest.env:remove_node(grille.pos)
			else
				grille.time = grille.time - 1
			end
		end
	end
end)
