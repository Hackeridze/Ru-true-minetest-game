--
--
-- 		Author: Nemo08
--
-- 		v. 0.0.1-rtmmp

local cute_descr = function(str)  -- ^^ nya!
	return(str:gsub('_',' '):gsub("^%l", string.upper))
end

for _, color in ipairs(DYE_COLORS) do

	minetest.register_craft({
		output = 'roof:tile_' .. color .. ' 4',
		recipe = {
			{'default:clay_lump', 'dye:' .. color},
			{'default:clay_lump', 'default:clay_lump'},
		}
	})

	local png = 'roof_tile_' .. color .. '.png'
	
	minetest.register_node('roof:tile_' .. color, {
		description = cute_descr(color) .. ' tile',
		drawtype = 'raillike',
		tile_images = {png,png,png,png},
		inventory_image = png,
		wield_image = png,
		paramtype = 'light',
		is_ground_content = true,
		walkable = true,
		material = minetest.digprop_glasslike(1.0),
	})
end

	minetest.register_craft({
		output = 'roof:straw 6',
		recipe = {
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		}
	})

	local png = 'roof_straw.png'
	minetest.register_node('roof:straw', {
		description = 'Straw',
		drawtype = 'raillike',
		tile_images = {png,png,png,png},
		inventory_image = png,
		wield_image = png,
		paramtype = 'light',
		is_ground_content = true,
		walkable = true,
		selection_box = {
			type = 'fixed',
		},
		material = minetest.digprop_dirtlike(0.75),
	})
			
	minetest.register_craft({
		output = 'roof:tile_glass 4',
		recipe = {
			{'default:clay_lump', 'default:glass'},
			{'default:clay_lump', 'default:clay_lump'},
		}
	})

	local png = 'roof_tile_glass.png'
	minetest.register_node('roof:tile_glass', {
		description = 'Glass tile',
		drawtype = 'raillike',
		tile_images = {png,png,png,png},
		inventory_image = png,
		wield_image = png,
		paramtype = 'light',
		is_ground_content = true,
		walkable = true,
		selection_box = {
			type = 'fixed',
		},
		material = minetest.digprop_glasslike(1.0),
	})