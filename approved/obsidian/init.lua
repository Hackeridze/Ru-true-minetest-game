-- Obsidian mod, originally made by <???>
-- modifed by xyz

minetest.register_node("obsidian:obsidian_block", {
    tile_images = {"obsidian_block.png"},
    inventory_image = minetest.inventorycube("obsidian_block.png"),
    is_ground_content = true,
    material = minetest.digprop_glasslike(5.0), -- obsidian is hard, but brittle
})

minetest.register_abm({
    nodenames = {"default:lava_flowing"},
    neighbors = {"default:water_source", "default:water_flowing"},
    interval = 1,
    chance = 1,
    action = function(pos, node)
        minetest.env:add_node(pos, {name="default:cobble"})
    end
})

minetest.register_abm({
    nodenames = {"default:lava_source"},
    neighbors = {"default:water_source", "default:water_flowing"},
    interval = 1,
    chance = 1,
    action = function(pos, node)
        minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
    end
})
