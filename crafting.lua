minetest.register_craft({
		output = "aether:pot",
		recipe = {
			{"default:obsidian_block", "", "default:obsidian_block"},
			{"default:obsidian_block", "", "default:obsidian_block"},
			{"default:obsidian_block", "default:obsidian_block", "default:obsidian_block"}
		}
})
minetest.register_craft({
		output = "aether:essence",
		recipe = {
			{"", "aether:diamond_earth", ""},
			{"aether:diamond_air", "vessels:glass_bottle", "aether:diamond_water"},
			{"", "aether:diamond_fire", ""}
		}
})
minetest.register_craft({
		output = "aether:reactor",
		recipe = {
			{"aether:diamond", "default:steelblock", "aether:diamond"},
			{"default:steel_ingot", "", "default:steel_ingot"},
			{"aether:diamond", "default:steelblock", "aether:diamond"}
		}
})
minetest.register_craft({
		output = "aether:fuser",
		recipe = {
			{"default:mese", "default:stone", "default:mese"},
			{"default:stone", "default:furnace", "default:stone"},
			{"default:mese", "default:stone", "default:mese"}
		}
})
minetest.register_craft({
		output = "aether:fire_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether:diamond_fire", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether:water_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether:diamond_water", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether:earth_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether:diamond_earth", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether:air_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether:diamond_air", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})