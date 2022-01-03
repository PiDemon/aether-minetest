minetest.register_craft({
		output = "aether_new:pot",
		recipe = {
			{"default:obsidian_block", "", "default:obsidian_block"},
			{"default:obsidian_block", "", "default:obsidian_block"},
			{"default:obsidian_block", "default:obsidian_block", "default:obsidian_block"}
		}
})
minetest.register_craft({
		output = "aether_new:essence",
		recipe = {
			{"", "aether_new:diamond_earth", ""},
			{"aether_new:diamond_air", "vessels:glass_bottle", "aether_new:diamond_water"},
			{"", "aether_new:diamond_fire", ""}
		}
})
minetest.register_craft({
		output = "aether_new:reactor",
		recipe = {
			{"aether_new:diamond", "default:steelblock", "aether_new:diamond"},
			{"default:steel_ingot", "", "default:steel_ingot"},
			{"aether_new:diamond", "default:steelblock", "aether_new:diamond"}
		}
})
minetest.register_craft({
		output = "aether_new:fuser",
		recipe = {
			{"default:mese", "default:stone", "default:mese"},
			{"default:stone", "default:furnace", "default:stone"},
			{"default:mese", "default:stone", "default:mese"}
		}
})
minetest.register_craft({
		output = "aether_new:fire_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether_new:diamond_fire", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether_new:water_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether_new:diamond_water", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether_new:earth_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether_new:diamond_earth", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})
minetest.register_craft({
		output = "aether_new:air_stab",
		recipe = {
			{"default:goldblock", "default:obsidian_glass", "default:goldblock"},
			{"default:steel_ingot", "aether_new:diamond_air", "default:steel_ingot"},
			{"default:goldblock", "default:steel_ingot", "default:goldblock"}
		}
})