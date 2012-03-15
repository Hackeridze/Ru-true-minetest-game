

addore = function(modName,oreName,oreDescription,
				oreTexture,oreMaterial,
				maxAmountForChunk,
				rarity,size,
				minY,maxY,
				dropShitName,dropShitDescription,
				dropShitTexture,dropShitAmount)

local ore = modName .. ':' .. oreName
local shit = modName .. ':' .. dropShitName

if dropShit = -1 then
	minetest.register_node(ore, {
		description = oreDescription,
		tile_images = {oreTexture},
		is_ground_content = true,
		material = orematerial,
	})
else      
	minetest.register_craftitem(shit, {
		description = dropShitDescription,
		image = dropShitTexture,
		on_place_on_ground = minetest.craftitem_place_item,
	}) 
	minetest.register_node(ore, {
		description = oreDescription,
		tile_images = {oreTexture},
		is_ground_content = true,
		material = orematerial,
		drop = {
			max_items = dropShitAmount,
			items = {
				{
					items = {shit},
					rarity = 1,
				}
			}
		},
	})
end

local gen = function(minp,maxp)
    if math.random(1,rarity) != 1 then return; end

	if  minp.y < minY or maxp.y > maxY then return; end
    
	for a = 0, maxAmountForChunk do
		local pos = {
			x = math.random( minp.x, maxp.x ),
			y = math.random( minp.y, maxp.y ),
			z = math.random( minp.z, maxp.z ),
		}
		for i = -1, size.x -1 do
			for j = -1, size.y-1 do
				for k = -1, size.z-1 do
					if math.random(1,5) > 2 then
					else
						local p = { x=pos.x+i, y=pos.y+j, z=pos.z+k }
						local n = minetest.env:get_node( p )
						if n.name == "default:stone" then
							minetest.env:add_node( p, { name = ore } )
						end
					end
				end
			end
		end
	end
end
minetest.register_on_generated(gen)
end


addOre("ololo","check_ore","BAD ORE",
				"check_ore.png",minetest.digprop_stonelike(1.4),
				50,
				1,{
					x = 1,
					y = 1,
					z = 1,
				},
				-31000,100,
				"huita","This is huita",
				"check_shit.png",10)
