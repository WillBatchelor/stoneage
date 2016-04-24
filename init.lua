stoneage = {} 
stoneage.path = minetest.get_modpath("stoneage")


minetest.register_craftitem("stoneage:flint", {
	description = "Flint",
	inventory_image = "stoneage_flint.png"
})


minetest.register_craftitem("stoneage:cotton_sheet", {
	description = "Cotton Sheet",
	inventory_image = "stoneage_cotton_sheet.png",

})

minetest.register_craftitem("stoneage:fletch", {
    description = "Fletch",
    inventory_image = "stoneage_fletch.png",

})


minetest.register_craftitem("stoneage:sap", {
    description = "Sap",
    inventory_image = "stoneage_sap.png",

})


minetest.register_craftitem("stoneage:fletch", {
    description = "Resin",
    inventory_image = "stoneage_resin.png",

})


minetest.register_craftitem("stoneage:arrow", {
    description = "Arrow",
    inventory_image = "stoneage_arrow.png",

})


minetest.register_craftitem("stoneage:flint_and_steel", {
    description = "Flint and Steel",
    inventory_image = "stoneage_flint_and_steel.png",

})


minetest.override_item("default:gravel", {drop = {
	max_items = 1,
	items = {
		{items = {'stoneage:flint'},rarity = 10},
		{items = {'default:gravel'}},
	}
}})
