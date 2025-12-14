---
icon: lucide/replace
tags:
  - Minecraft
---
# Vanilla Changes

## Crafting
Telzenith features several adjusted crafting recipes to improve gameplay balance and accessibility while maintaining the core vanilla experience. Some recipes have been tweaked to make certain items more obtainable, while others have been modified to encourage alternative progression paths.

Below is a list of modified crafting recipes available on the server:

* Raw ore (copper, iron, and gold) blocks can be smelted directly into their respective ingot storage blocks

These changes are designed to enhance the survival experience without drastically altering the game's mechanics. If you're unsure about a specific recipe, be sure to check the crafting guide in-game or ask other players for assistance.

## Sleeping
Sleeping no longer advances time to day. While the ability to rest in a bed remains, it will not skip the night or change the time of day. However, the insomnia system still functions as intended, meaning phantoms will continue to spawn if a player hasn’t rested in a while. To prevent phantom attacks, players should routinely rest in a bed for several seconds until the screen darkens, which resets their insomnia timer.

Despite this change, sleeping mechanics remain unaffected in other aspects—players can still sleep during thunderstorms and at night, just without altering the server’s time.

## Local Mob Caps
In addition to the server’s normal mob caps, we have implemented local mob caps as a form of farm control. These limits apply by area and primarily affect passive mobs like livestock, villagers, and copper golems to keep farms balanced and performance stable.

#### Animal Farms
- If more than 15 animals exist within a 10-block radius, their AI will be nerfed, collisions will be disabled, and breeding will be turned off.
- If the count exceeds 20 animals in the same range, animals will be randomly killed off until 20 or fewer remain.

#### Villagers
- If more than 6 villagers exist within a 15-block radius, villager breeding will be disabled.
- If the count exceeds 20 villagers in the same range, villagers will be killed off until 20 or fewer remain.

#### Copper Golems
- If more than 2 copper golems exist within a 50-block radius, their AI and collisions will be disabled. Players are expected to manually remove excess copper golems until only two remain.