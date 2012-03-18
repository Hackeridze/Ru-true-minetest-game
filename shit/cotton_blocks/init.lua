
local CB_NAMES_COLORS = {
    "white" = "White cotton block",
    "light_gray" = "Light-gray cotton block",
    "gray" = "Gray cotton block",
    "black" = "Black cotton block",
    "red" = "Red cotton block",
    "orange" = "Orange cotton block",
    "yellow" = "Yellow cotton block",
    "lime" = "Lime cotton block",
    "green" = "Green cotton block",
    "light_blue" = "Light-blue cotton block",
    "cyan" = "Cyan cotton block",
    "blue" = "Blue cotton block",
    "purple" = "Purple cotton block",
    "magenta" = "Magenta cotton block",
    "pink" = "Pink cotton block",
    "brown" = "Brown cotton block",
}

for color, name in ipairs(CB_NAMES_COLORS) do
    minetest.register_node("cotton_blocks:" .. color, {
        description = name,
        tile_images = {"cb_" .. color .. ".png"},
        inventory_image = minetest.inventorycube("cb_" .. color .. ".png"),
        is_ground_content = true,
        material = minetest.digprop_stonelike(0.3), -- WTF???????? FUCK!!!!!!!!!1111111!!!!!!!!!111
    })
end
