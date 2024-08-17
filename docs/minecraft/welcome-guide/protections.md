# Protecting Your Stuff

On Aurelium, any inventory (chest, furnace, etc.) that is not protected or lock is fair game for anyone to take from without consequences. In this article, we will go over the various methods that players can opt to use in order to protect their personal items from theft on Aurelium. The solutions presented in this article are ranked from least secure to most secure; They are, regardless of player rank, a way of securing your items.

## Item Ownership (WIP)
Players on Aurelium have the option of registering a unique ID to their tools, weapons, and armor. Having a unique ID assigned to your item allows it to possibly be recovered should your item ever become lost or stolen. To manage item ownership, the following commands have been created:

* **/own** <br />
This command gives your item a unique ID as well as your Minecraft UUID in the item’s lore section. Upon successful execution of the command, the unique ID will also be printed to the in-game chat; We recommend screenshotting this otherwise your item cannot be found should it become lost or stolen. The /own command is also used to complete an item transfer/trade between players.
* **/own <player>** <br />
Used when trading or transferring items between players. This will add the target player to the item but will not change ownership over; Once the new user receives the item they must execute /own while holding it in their main hand in order to complete the trade/transfer.
* **/disown <unique ID>** <br />
Removes ownership from the item that is currently held in your main hand. You must type the complete unique ID when executing the command. Players must be the current owner of the item they wish to remove ownership from otherwise the command will fail.

## GriefPevention Claims
The benefit of using protection claims on Aurelium is that all inventories that are placed within a protection claim are automatically locked. One downside to this, however, is that the inventories are locked to the claim, not the player; This means that not only the owner but also anyone else who has been added to the claim through the `/trust` command can also open the inventories within the claim.

Another downside of using protection claims is that should a protection claim disappear due to inactivity or disbandment, all inventories that were in that claim are now unlocked for anyone to access. In short, protection claims work and they will protect any inventories that are placed within them it’s just advised that players should be vigilant with who they trust with their claims as well as make sure that all inventories placed in the world are actively protected by a claim.

To create a claim and reference a more in-depth guide, players should refer our [GriefPrevention guide](../griefprevention-claims).

## LWCX Locks
On Aurelium, one of the primary methods to protect your items is with LWC Protections; They are also sometimes called locks or LWC’s. LWC Protections are mainly aimed at protecting items in chests, however, players may opt to also put locks on other inventories as well as interactive blocks such as doors, trapdoors, gates, and even beds. The only real limits that are placed on locks is that they cannot be created in the Nether or End and players have a limit of 100 locks.

The blocks that can have a lock applied to them are:

* Chest
* Trapped Chest
* Furnace
* Smoker
* Blast Furnace
* Dispenser
* Dropper
* Shulker Box (all colors)
* Wooden Doors (all wood types)
* Wooden Trapdoors (all wood types)
* Iron Door
* Iron Trapdoor
* Fence Gates (all wood types)
* Bed (all colors)
* Lectern

For ease of use, we have created the following command aliases:

* **/lock** <br />
Creates a private protection lock on a block.
* **/remlock** <br />
Removes protection lock from a block.

Further documentation including lock types and commands can be found on the [official wiki](https://github.com/pop4959/LWCX/wiki/Getting-Started).

## Ender Chest Storage
Probably the most vanilla way to protect your personal items is to put them in an ender chest. Items that are placed in your ender chest are stored in a location inaccessible to others and can be accessed anytime from anywhere that there is an ender chest available.

For players who put an effort into organizing their ender chest into shulker boxes, they can store roughly 729 unique items in their ender chest with more room to spare if they are also utilizing bundles.

## Player Vaults
Similar in function to ender chests, player vaults are a double-chest in size inventory that allows players to store items in a safe, secure place that is away from the server network itself. Player vaults are also cross server so players may opt to utilize them to move items within the network as well. 

As mentioned, player vaults are a double-chest in sized inventory that features 54 slots for items to be placed in; For players who put an effort into managing their ender chest and use shulker boxes, they can store roughly 1,458 unique items in their ender chest with more room to spare if they are also utilizing bundles.