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
    material = minetest.digprop_stonelike(1.7),
    dug_item = 'node "moarcraft_rtmmp:stone_brick" 1',
})
