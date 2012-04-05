--[[
{
    {   
        k_grow_time,      -- k * STANDART_GROW_TIME
        image,
        drop,
        groups,
        chance
    }
}
]]--

STANDART_SPGROW_TIME = 120

local TRANSFORMS = {}

function register_plant_with_full_stages(grow_table)

    for stage in ipairs(grow_table) do
        if grow_table[stage].chance > 1 then 
            grow_table[stage].chance = 1
        end
        
        minetest.register_node(grow_table[stage].name, {
            description = grow_table[stage].name,
            drawtype = "plantlike",
            walkable = false,
            tile_images = {grow_table[stage].image},
            inventory_image = grow_table[stage].image,
            wield_image = grow_table[stage].image,
            paramtype = "light",
            drop = grow_table[stage].drop,
            groups = grow_table[stage].groups,
            sounds = default.node_sound_leaves_defaults(),
        })
            
        if (#(grow_table) > stage) then
            minetest.register_abm({
                nodenames = { grow_table[stage].name },
                interval = grow_table[stage].time * STANDART_SPGROW_TIME,
                chance = grow_table[stage].chance,                    
                action = function (pos, node)
                    if math.random() < grow_table[stage].chance then
                        minetest.env:add_node(pos, {name = grow_table[stage + 1].name})
                    end
                end
            })
        end
    end
end

function register_simple_plant(name, final_description, stage_max, stage_time, image_template, final_drop)
    -- number of stages of growth   [1 .. stage_max]
    -- image template .. [1 .. stage_max] .. ".png"  --> png
    local ngrow_table = {}
    local cur_drop = ''
    
    for i=1, stage_max do
        cur_drop = ''
        if i == stage_max then
            cur_drop = final_drop
        end
        
        table.insert(ngrow_table, {
            name = name .. i,
            time = stage_time,
            image = image_template .. i .. ".png",
            drop = cur_drop,
            groups = {snappy=3},
            chance = 0.6
        })
    end
    
    register_plant_with_full_stages(ngrow_table)
end

function register_transform_plant(grow_table)

    for stage in ipairs(grow_table) do
        if grow_table[stage].chance > 1 then 
            grow_table[stage].chance = 1
        end

        minetest.register_node(grow_table[stage].name, {
            description = grow_table[stage].name,
            drawtype = "plantlike",
            walkable = false,
            tile_images = {grow_table[stage].image},
            inventory_image = grow_table[stage].image,
            wield_image = grow_table[stage].image,
            paramtype = "light",
            drop = grow_table[stage].drop,
            groups = grow_table[stage].groups,
            sounds = default.node_sound_leaves_defaults(),
        })
        
        if (grow_table[stage].transform ~= nil) then
            
            TRANSFORMS[grow_table[stage].name] = grow_table[stage].transform
            
            minetest.register_abm({
                nodenames = { grow_table[stage].name },
                interval = grow_table[stage].time * STANDART_SPGROW_TIME,
                chance = grow_table[stage].chance,                    
                action = function (pos, node)
                    if math.random() < grow_table[stage].chance then
                        local rnd = 1
                        if #(TRANSFORMS[node.name]) > 1 then
                            rnd = math.random(#(TRANSFORMS[node.name]))
                        end
                        local transform = TRANSFORMS[node.name][rnd]

                        minetest.env:add_node({
                                x = pos.x + transform.x,
                                y = pos.y + transform.y,
                                z = pos.z + transform.z
                            }, 
                            {name = transform.newname}
                        )
                        if transform.oldname ~= nil then
                            minetest.env:add_node(pos, {name = transform.oldname})   
                        end
                    end
                end
            })
        end
    end
end