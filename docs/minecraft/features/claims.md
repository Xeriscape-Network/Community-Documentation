# Protection Claims
You can create land claims/protection regions on Aurelium to protect your builds. When you claim a section of land, other players will be unable to place or break blocks, kill animals, take crops, or open chests. Everything will be completely protected!

To claim land, you will need to utilize a golden shovel and a stick. You can craft these items yourself or do /menu receive them for free from the server gameplay menu. The golden shovel is used for creating and modifying claims while the stick is used for viewing information on your claims as well as other players’ claims.

You can create as many claims as you want, however, there is a limit as to how many claim blocks in total that you can claim. All players start out with an allowance of 100 claim blocks when they first join the server and accrue an additional 2000 claim blocks a period of 20 hours of time spent actively playing on the server; Additional claim blocks may be purchased with in-game currency using the /buyclaimblocks <amount> command.

[A video guide](https://youtu.be/TLR4GrOiGOY?t=133) for managing claims with GriefPrevention has also been created by [The Breakdown](https://www.youtube.com/channel/UC6Ec5NXzcESo60F3UgtgQRA) demonstrating the basics of GriefPrevention for those who would like to view a video guide instead.

## Claim Creation
Before creating a claim, it is recommended to see if there any are other claims owned by other players that exist nearby; Claims owned by different players are recommended to be at least 100 blocks apart unless both parties have agreed otherwise. To visualize all nearby claims, equip a stick in your main hand and shift+right-click. All nearby claims will become visible to you using a dotted outline of gold blocks and the number of nearby claims will also be displayed in chat.

Once you have verified that there are no nearby claims you can begin the process of creating your first claim. To create a claim, equip a golden shovel in your main hand and right-click on the ground where you would like to have the first corner of your claim marked. After marking out your first corner, you will need to go to the opposite corner (diagonally) and mark the second corner to create your claim.

!!! tip "Protection Claim Height"
	The vertical size of a claim is not equal to the world height (bedrock to build limit); The lowest point of the claim starts at 5 blocks below the lowest corner you marked out. It’ll keep expanding down as you place blocks lower in the claim, but it may reset when you change the claim size, trust another player, create sub-claims, etc. 
	
	If you want to ensure that your claim stays extended all the way down, make one of the initial corners at bedrock level. Please remember to not claim any further deeper or higher than you need to.

## Resizing Claims
Similar to the process of creating a claim, you can also resize your claims to protect more land or to conserve claim blocks. To make the outline of your claim visible, first, equip a stick and right-click anywhere within the claim. This will show the border of the claim so that you can see where the corners are.

To resize a claim, equip a golden shovel and right-click the corner you would like to move. After you have right-clicked the corner you wish to move, right-click again wherever you would like to move that corner to so that your claim size may be adjusted.

### Purchasing Claim Blocks
If you don't have the needed amount of claim blocks available to expand (or create) your claim, you will need to purchase additional claim blocks from the server; The price for purchasing claim blocks is dependent on how many you have:

<center>

| Owned Claim Blocks  | Price Per Block    |
| ------------------- | ------------------ |
| 0 - 10,000          | $0.50 / block      |
| 10,000 - 50,000     | $0.75 / block      |
| 50,000 - 125,000    | $1.00 / block      |
| 125,000 - 500,000   | $2.50 / block      |
| 500,000 - 1,000,000 | $5.00 / block      |
| 1,000,000+          | $10.00 / block     |

</center>

## Trusting Others

!!! tip inline end "Subdivision Trust Levels"
	Protection claims that make use of subdivisions can grant trust levels to players on a subdivision level or to the entire claim.

If you would like to grant another player full acess to your claim (breaking, building, inventory access, etc.), simply execute the **/trust <player\>** command; If you would like to remove a players access to your claim, use **/untrust <player\>**.

If you wish to grant everyone on the server access to your claim, simply replace the **<player\>** argument with **all**.

For a more finely tuned means of giving a player specific access to your claim, the three trust levels of container, access, and permission are present for use:

=== "Container Trust"
	Grants the trusted player the ability to interact with inventories such as chests and furnaces while denying them access and building permission.
	
	To container trust a player, use either **/containertrust <player\>** or **/ct <player\>**.

=== "Accesss Trust"	
	Grants the trusted player the ability to access the claim; Access is defined as being able to interact with objects that would block player movement such as doors, trapdoors, and fence gates. Access to inventories such as chests and furnances as well as the ability to build and destroy are still denied.
	
	To access trust a player, use either **/accesstrust <player\>** or **/at <player\>**.

=== "Permission Trust"
	Grants the trusted player with the ability to trust other players to the claim.
	
	To permission trust a player, use either **/permissiontrust <player\>** or **/pt <player\>**.

## Subdividing Claims
Claims can be broken down into smaller mini-claims through the use of subdivisions. Subdivisions allow you to give players access to specific parts of your claim; This can be used to create and manage a town or even a shop. Another way to visualize this is that you are granting other players access to a specific section of your claim instead of the entire claim. You are still in control of the border of these mini-claims.

Once a subdivision is created, you can trust people the same way as before. Just stand in the subdivision (mini-claim) and use the trust commands. The only difference this time is that it will only trust them to that subdivision. If your claim has been subdivided and you want to trust someone to your claim and not a subdivision, you will have to execute the trust command outside of the subdivisions in your claim.

To create subdivisions within your claim, you will need to toggle "subdivision mode"; You can access this mode with either **/subdivide** or **/subdivideclaims**. Once you are in this mode, you can create subdivisions in the same manner that you would create a regular claim; The main difference is that the subdivisions will have a white outline rather than a golden one. Once you have finished managing your subdivisions, you can toggle the subdivision mode off with **/basicclaims**.

## Automatic Cleanup
When a player has been inactive for a period of 60 consecutive days, their claim will be converted into an admin claim. While the claim is in that state, everyone will be granted container access. Anyone will be able to raid the claim but won't be able to take over the claim; If you wish to claim the build, you will need to return 24 hours later after the build has been unclaimed.

!!! tip inline end "Subdivision Trust Levels"
	Protection claims that make use of subdivisions can grant trust levels to players on a subdivision level or to the entire claim.

Any containers (e.g. chests, shulker boxes) that are placed within an active raid-claim are fair game - this also includes containers that raiders place. This means, as an example, that items a raider puts into their personal shulker box aren't safe while placed down or when on the ground as an item after being broken, as anyone that comes by can take it.

If you are planning to be away from the server for this long, all you need to do is join the server for a few minutes within those 60 days to reset the inactivity timer.

For other items that are affected based on the inactivity time of a player, please refer to our player data cleanup article instead.

## Command Reference[^1]
=== "Basics"
	* **/unclaim** <br />
	Abandon the claim you are currently standing in​.
	* **/abandonclaim** <br />
	Abandon the claim you are currently standing in​.
	* **/abandonallclaims** <br />
	Abandon all of your claims on the server.
	* **/claimslist** <br />
	List all of your protections.
	* **/buyclaimblocks <amount>** <br />
	Purchase a set amount of claim blocks in exchange for in-game currency.

=== "Player Trusts"
	* **/trust <player\>** <br />
	Allow someone to build and use chests within your claim​.
	* **/accesstrust <player\>** <br />
	Give someone access to doors and trapdoors in your claim.
	* **/containertrust <player\>** <br />
	Give someone access to chests in your claim.
	* **/permissiontrust <player\>** <br />
	Give someone the ability to trust and untrust others in your claim.
	* **/untrust <player\>** <br />
	Remove a player from your protection.
	* **/trustlist** <br />
	See who is trusted in your claim.

=== "Subdivisions"
	* **/subdivide** <br />
	Create claims within your main claim that you can trust people to.
	* **/restrictsubclaim** <br />
	Sets subclaim NOT to inherit perms from the parent claim.

[^1]:
	Additional commands and documentation can be found on the [official GriefPrevention wiki](https://docs.griefprevention.com/).
