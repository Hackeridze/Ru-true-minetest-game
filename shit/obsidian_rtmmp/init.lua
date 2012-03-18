-- Obsidian mod, originally made by <???>
-- modifed by rtmmp-team

minetest.register_node("obsidian_rtmmp:obsidian_block", {
    description="Obsidian",
    tile_images = {"obsidian_rtmmp_block.png"},
    inventory_image = minetest.inventorycube("obsidian_rtmmp_block.png"),
    is_ground_content = true,
    material = minetest.digprop_stonelike(15.0), -- obsidian is hard, like a stone, but harder
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
        minetest.env:add_node(pos, {name="obsidian_rtmmp:obsidian_block"})
    end
})
