# block-builder-mc
Just a small project to to make a script that generates custom Minecraft blocks using datapacks.


The block configuration is inspired by [maybejakes](https://github.com/maybejake)'s [Crop and Kettle](https://github.com/maybejake/crop-and-kettle) block implementation.

The block is made up of three main parts:
- The texture (an item display)
- The interaction (interaction entities)
- The collision (a barrier block)

Breaking it down, each block is really an item frame. We have a advancement detect when the item frame is placed and this will run a series of commands to kill the item frame, spawn in the item display, interations, and barrier block along with playing a sound and particles. We have other advancements detecting when the interactions are hit, and once they are, a 'health' will diminish until the block is broken (this is a counter that allows for repeated punching to break the block). Once that happens, the item display, interactions, and barrier are all removed and the block's item is spawned in its place.

Known Limitations
- If someone /kill @e, there will be a bunch of barriers left over. Solution is to use shulkers instead.
- The blocks don't diminish tool durability or base the 'health' on the tool type. Solution is to implement checks.
- Currently you can't place blocks on the custom block because they just trigger the interaction. Solution is unknown.
