local GRILLE_HEIGHT = 11;

local grilles_to_remove = {}
local grilles_to_add = {}

minetest.register_node("castle_grille:mechanism", {
	description = "Grille mechanism",
	tile_images = {"grille_meh.png"},
	is_ground_content = true,
	material = minetest.digprop_stonelike(30.0),
})

minetest.register_node("castle_grille:grille", {
	description = "Grille",
	drawtype = "fencelike",
	paramtype = "light",
	tile_images = {"grille_gril.png"},
	is_ground_content = true,
	material = minetest.digprop_constanttime(90),
	drop = "",
})

local function add_down(node,pos)
	for i = 1, GRILLE_HEIGHT do
		local current_pos = {x = pos.x, y = pos.y - i, z = pos.z}
		local current_node = minetest.env:get_node(current_pos)
		if current_node.name == "air" then
			table.insert(grilles_to_add,{pos = current_pos, time = i})
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

mesecon:register_on_signal_off(function (pos,node)
	if node.name == "castle_grille:mechanism" then
		remove_up(node,pos)
	end
end)

local delta = 0
minetest.register_globalstep(function(dtime)
	delta = delta + dtime
	while delta >= 1 do
		delta = delta - 1
		for num, grille in ipairs(grilles_to_remove) do
			if grille.time == 1 then 
				minetest.env:remove_node(grille.pos)
				grille.time = nil
				grille.pos = nil
			elseif grille.time then
				grille.time = grille.time - 1
			end
		end
		for num, grille in ipairs(grilles_to_add) do
			if grille.time == 1  then 
				minetest.env:remove_node(grille.pos)
				minetest.env:add_node(grille.pos, {name = "castle_grille:grille"})
				grille.time = nil
				grille.pos = nil
			elseif grille.time then
				grille.time = grille.time - 1
			end
		end
	end
end)

minetest.register_craft({
	output = 'castle_grille:mechanism',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:stone', 'default:stick', 'default:stone'},
		{'default:steel_ingot', 'default:stick', 'default:steel_ingot'},
	}
})
