minetest.register_craftitem("stoneage:flint", {
	description = "Flint",
	inventory_image = "stoneage_flint.png"
})


minetest.override_item("default:gravel", {drop = {
	max_items = 1,
	items = {
		{items = {'stoneage:flint'},rarity = 10},
		{items = {'default:gravel'}},
	}
}})
