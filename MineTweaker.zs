//AlienMC Minetweaker script

val fire = <minecraft:fire>;
val goldBucket = <minechem:minechemBucket.molecule.molecule.cocaine>;
val enderium = <ThermalFoundation:Storage:12>;
val star = <minecraft:nether_star>;
val boots = <ore:oc:hoverBoots>;
val invis = <ExtraUtilities:angelRing>;
val feather = <ExtraUtilities:angelRing:1>;
val fairy = <ExtraUtilities:angelRing:2>;
val dragon = <ExtraUtilities:angelRing:3>;
val golden = <ExtraUtilities:angelRing:4>;
val leather = <minecraft:leather>;
val soulFragment = <ExtraUtilities:mini-soul>;
val emeraldBlock = <minecraft:emerald_block>;
val notchApple = <minecraft:golden_apple:1>;
val redHeart = <minecraft:apple>;
val wheat = <minecraft:wheat>;
val spawnChicken = <minecraft:spawn_egg:93>;
val spawnCow = <minecraft:spawn_egg:92>;
val spawnSheep = <minecraft:spawn_egg:91>;
val spawnPig = <minecraft:spawn_egg:90>;
val seeds = <minecraft:wheat_seeds>;
val carrots = <minecraft:carrot>;

//Spawn Eggs since animals won't fuck
recipes.addShapeless(spawnChicken, [seeds, seeds]);
recipes.addShaped(spawnCow, [[wheat, wheat, null], [null, null, null], [null, null, null]]);
recipes.addShaped(spawnSheep, [[wheat, null, null], [wheat, null, null], [null, null, null]]);
recipes.addShapeless(spawnPig, [carrots, carrots]);

//Angel Rings
recipes.remove(<ExtraUtilities:angelRing:*>);
recipes.addShapeless(fire, [<ore:ingotSteel>, <ore:ingotUnstable>, <minecraft:flint>]);
recipes.addShaped(invis, [[<minecraft:glass>, enderium, <minecraft:glass>], [star, goldBucket, star], [fire, boots, fire]]);
recipes.addShaped(feather, [[<minecraft:feather>, enderium, <minecraft:feather>], [star, goldBucket, star], [fire, boots, fire]]);
recipes.addShaped(fairy, [[<minecraft:dye:5>, enderium, <minecraft:dye:9>], [star, goldBucket, star], [fire, boots, fire]]);
recipes.addShaped(dragon, [[leather, enderium, leather], [star, goldBucket, star], [fire, boots, fire]]);
recipes.addShaped(golden, [[<minecraft:gold_nugget>, enderium, <minecraft:gold_nugget>], [star, goldBucket, star], [fire, boots, fire]]);

recipes.addShapeless(invis, [feather]);
recipes.addShapeless(invis, [fairy]);
recipes.addShapeless(invis, [dragon]);
recipes.addShapeless(invis, [golden]);
recipes.addShapeless(feather, [<minecraft:feather>, invis, <minecraft:feather>]);
recipes.addShapeless(fairy, [<minecraft:dye:5>, invis, <minecraft:dye:9>]);
recipes.addShapeless(dragon, [leather, invis, leather]);
recipes.addShapeless(golden, [<minecraft:gold_nugget>, invis, <minecraft:gold_nugget>]);

//Soul Fragment
recipes.addShaped(soulFragment, [[redHeart, emeraldBlock, redHeart], [emeraldBlock, notchApple, emeraldBlock], [redHeart, emeraldBlock, redHeart]]);

//<chisel:futura>
recipes.remove(<chisel:futura>);
recipes.addShapeless(<chisel:futura>, [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:redstone>]);

//MFR Unifier
recipes.addShaped(<MineFactoryReloaded:machine.1:8>, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [<ore:dustRedstone>, <minecraft:comparator>, <ore:dustRedstone>], [null, <MineFactoryReloaded:machineblock>, null]]);

//Compressed Sawdust
recipes.addShaped(<ThermalExpansion:material:513>, [[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>], [<ore:dustWood>, null, <ore:dustWood>], [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>]]);
recipes.addShaped(<ThermalExpansion:material:513>, [[<ore:pulpWood>, <ore:pulpWood>, <ore:pulpWood>], [<ore:pulpWood>, null, <ore:pulpWood>], [<ore:pulpWood>, <ore:pulpWood>, <ore:pulpWood>]]);

//rftools Disable Dim stuff
//recipes.remove(<rftools:dimensionBuilderBlock:*>);
//recipes.remove(<rftools:emptyDimensionTab:*>);
//recipes.remove(<rftools:dimensionEnscriberBlock>);
//recipes.remove(<rftools:dimensionEditorBlock>);

//Disable BC Quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);

//Disable Advanced Energy Cube
recipes.remove(<Calculator:AdvancedPCubeIdle>);

//Fun stuff - (Add Energy Cube)
recipes.remove(<Calculator:AlgorithmSeperatorIdle>);
recipes.addShaped(<Calculator:AlgorithmSeperatorIdle>,[[<Calculator:ReinforcedBlock>,<Calculator:ReinforcedBlock>,<Calculator:ReinforcedBlock>],[<Calculator:RedstonedAxe>,<Calculator:FlawlessDiamond>,<Calculator:RedstonedAxe>],[<Calculator:ReinforcedBlock>,<Calculator:ReinforcedBlock>,<Calculator:ReinforcedBlock>]]);


