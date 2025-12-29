---
icon: lucide/replace
tags:
  - Minecraft
---
# Vanilla Changes
This article provides an overview of how core gameplay systems are handled on the server, with a focus on consistency, balance, and overall quality of life. The information below explains how certain mechanics behave in practice and what players can expect during normal gameplay.

## Crafting
Telzenith features several adjusted crafting recipes to improve gameplay balance and accessibility while maintaining the core vanilla experience. Some recipes have been tweaked to make certain items more obtainable, while others have been modified to encourage alternative progression paths.

Below is a list of modified crafting recipes available on the server:

* Raw ore (copper, iron, and gold) blocks can be smelted directly into their respective ingot storage blocks

These changes are designed to enhance the survival experience without drastically altering the game's mechanics. If you're unsure about a specific recipe, be sure to check the crafting guide in-game or ask other players for assistance.

## Loot Tables
Some vanilla loot tables have been adjusted to improve consistency and balance across gameplay systems. These changes are intended to reduce edge cases and align drop behavior with player expectations, without significantly altering the overall vanilla experience.

### Jungle Leaves
The sapling drop rate for Jungle Leaves has been adjusted to match the standard sapling drop rates used by other leaf blocks. This change brings jungle trees in line with other tree types and improves consistency when farming saplings.

## Sleeping
Sleeping no longer advances the time to day. Players can still rest in a bed, but doing so will not skip the night or change the time of day. The insomnia system remains unchanged; phantoms will spawn if a player hasn’t rested recently. To reset insomnia, players must rest in a bed until the screen darkens.

All other sleep mechanics remain the same, including the ability to sleep at night and during thunderstorms.

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