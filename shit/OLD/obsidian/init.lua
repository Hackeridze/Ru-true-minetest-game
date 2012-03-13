minetest.register_node("obsidian:obsidian_block", {
	tile_images = {"obsidian_block.png"},
	inventory_image = minetest.inventorycube("obsidian_block.png"),
	is_ground_content = true,
	material = minetest.digprop_glasslike(5.0), -- obsidian is hard, but brittle
	extra_dug_item = 'craft "obsidian:obsidian_shard" 1',
	extra_dug_item_rarity = 20,
})

minetest.register_craftitem("obsidian:obsidian_shard", {
	image = "obsidian_shard.png",
	on_place_on_ground = craftitem_place_item,
})

minetest.register_craft({
	output = 'tool "obsidian:obsidian_knife"',
	recipe = {
		{'craft "obsidian:obsidian_shard"'},
		{'craft "default:stick"'},
	}
})

minetest.register_tool("obsidian:obsidian_knife", {
	image = "obsidian_knife.png",
	basetime = 1.0,
	dt_weight = 0.5,
	dt_crackiness = 2,
	dt_crumbliness = 4,
	dt_cuttability = -0.5,
	basedurability = 330,
	dd_weight = 0,
	dd_crackiness = 0,
	dd_crumbliness = 0,
	dd_cuttability = 0,
})

minetest.register_abm(
{nodenames = {"default:lava_source"},
interval = 5,
chance = 1,
action = function(pos, node, active_object_count, active_object_count_wider)
	for i=-1,1 do
		for j=-1,1 do
			for k=-1,1 do
				p = {x=pos.x+i, y=pos.y+j, z=pos.z+k}
				n = minetest.env:get_node(p)
				if (n.name=="default:water_flowing") or (n.name == "default:water_source") then
					minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
				end
			end
		end
	end
end
})

minetest.register_abm(
{nodenames = {"default:lava_flowing"},
interval = 5,
chance = 1,
action = function(pos, node, active_object_count, active_object_count_wider)
	for i=-1,1 do
		for j=-1,1 do
			for k=-1,1 do
				p = {x=pos.x+i, y=pos.y+j, z=pos.z+k}
				n = minetest.env:get_node(p)
				if (n.name=="default:water_flowing") or (n.name == "default:water_source") then
					if (j==-1) then
						minetest.env:add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="default:cobble"})
					else
						minetest.env:add_node(pos, {name="default:cobble"})
					end
				end
			end
		end
	end
end
})

print("[Obsidian] Loaded!")
