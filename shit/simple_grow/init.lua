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

--
--
--
]]--

STANDART_SPGROW_TIME = 120

function register_simple_plant(grow_table)

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
