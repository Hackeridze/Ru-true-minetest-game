-- Minetest 0.4 mod: bucket
-- See README.txt for licensing and other information.

minetest.register_alias("bucket", "bucket:bucket_empty")
minetest.register_alias("bucket_water", "bucket:bucket_water")
minetest.register_alias("bucket_lava", "bucket:bucket_lava")

minetest.register_craft({
	output = 'bucket:bucket_empty 1',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
	}
})

bucket = {}
bucket.liquids = {}

-- Register a new liquid
--   source = name of the source node
--   flowing = name of the flowing node
--   itemname = name of the new bucket item (or nil if liquid is not takeable)
--   inventory_image = texture of the new bucket item (ignored if itemname == nil)
-- This function can be called from any mod (that depends on bucket).
function bucket.register_liquid(source, flowing, itemname, inventory_image)
	bucket.liquids[source] = {
		source = source,
		flowing = flowing,
		itemname = itemname,
	}
	bucket.liquids[flowing] = bucket.liquids[source]

	if itemname ~= nil then
		minetest.register_craftitem(itemname, {
			inventory_image = inventory_image,
			stack_max = 1,
			liquids_pointable = true,
			on_use = function(itemstack, user, pointed_thing)
				-- Must be pointing to node
				if pointed_thing.type ~= "node" then
					return
				end
				-- Check for liquid container
				n = minetest.env:get_node(pointed_thing.under)
				local max_fill = minetest.get_item_group(n.name, 'liquid_container')
				if max_fill ~= 0 then
					local meta = minetest.env:get_meta(pointed_thing.under)
					local liquid_type = meta:get_string('liquid')
					local liquid_quantity = meta:get_string('quantity')
					if (liquid_type == source)or(liquid_type == '') then
						if tonumber(liquid_quantity) < max_fill then
							meta:set_string('liquid', source)
							meta:set_string('quantity', liquid_quantity + 1)
							local node_descr = minetest.registered_nodes[source]['description']
							if node_descr == '' then
								node_descr = source
							end
							meta:set_infotext(minetest.registered_nodes[n.name]['description'] .. ' filled by '.. node_descr .. ' ' .. (liquid_quantity + 1))
						end
						return {name="bucket:bucket_empty"}
					end
					if (liquid_type ~= source)or(liquid_type ~= '') then
						return
					end
                end	
				-- Check if pointing to a liquid
				n = minetest.env:get_node(pointed_thing.under)
				if bucket.liquids[n.name] == nil then
					-- Not a liquid
					minetest.env:add_node(pointed_thing.above, {name=source})
				elseif n.name ~= source then
					-- It's a liquid
					minetest.env:add_node(pointed_thing.under, {name=source})
				end
				return {name="bucket:bucket_empty"}
			end
		})
	end
end

minetest.register_craftitem("bucket:bucket_empty", {
	inventory_image = "bucket.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end
		-- Check for liquid container
		n = minetest.env:get_node(pointed_thing.under)
		local max_fill = minetest.get_item_group(n.name, 'liquid_container')
		if max_fill ~= 0 then
			local meta = minetest.env:get_meta(pointed_thing.under)
			local liquid_type = meta:get_string('liquid')
			local liquid_quantity = meta:get_string('quantity')
			liquiddef = bucket.liquids[liquid_type]
			if liquiddef ~= nil and liquiddef.source == liquid_type and liquiddef.itemname ~= nil and tonumber(liquid_quantity)>=1 then
				meta:set_string('quantity', liquid_quantity - 1)
				local node_descr = minetest.registered_nodes[liquiddef.source]['description']
				if node_descr == '' then
					node_descr = liquiddef.source
				end
				if (liquid_quantity - 1)~=0 then
					meta:set_infotext(minetest.registered_nodes[n.name]['description'] .. ' filled by '.. node_descr .. ' ' .. (liquid_quantity - 1))
				else
					meta:set_string('liquid', '')
					meta:set_infotext(minetest.registered_nodes[n.name]['description'] .. ' empty')
				end
				return {name=liquiddef.itemname}
			end
        end			
		-- Check if pointing to a liquid source
		n = minetest.env:get_node(pointed_thing.under)
		liquiddef = bucket.liquids[n.name]
		if liquiddef ~= nil and liquiddef.source == n.name and liquiddef.itemname ~= nil then
			minetest.env:add_node(pointed_thing.under, {name="air"})
			return {name=liquiddef.itemname}
		end
	end,
})

bucket.register_liquid(
	"default:water_source",
	"default:water_flowing",
	"bucket:bucket_water",
	"bucket_water.png"
)

bucket.register_liquid(
	"default:lava_source",
	"default:lava_flowing",
	"bucket:bucket_lava",
	"bucket_lava.png"
)

minetest.register_craft({
	type = "fuel",
	recipe = "default:bucket_lava",
	burntime = 60,
})	
