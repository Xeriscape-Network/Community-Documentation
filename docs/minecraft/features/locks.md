---
icon: lucide/lock
tags:
  - Minecraft
---

# Bolt Locks
Bolt is our server's protection system for containers and blocks. It allows you to "lock" items like chests, furnaces, barrels, and even doors to ensure your items remain safe.

## Limits & Claims
To ensure everyone has the opportunity to protect their most important belongings, each player is provided an allocation of 500 total locks.

It is important to note that Bolt locks are independent of the [claim system](./claims). This means:

- **In the Wild:** You can lock containers anywhere in the world, even if the land is not claimed.
- **In Shared Claims:** If you live in a claim with other players, your locks will prevent other claim members from accessing your containers unless you explicitly give them permission.
- **Double Protection:** You can use locks to add an extra layer of security to your own private claims. This is especially useful if you are going away from the server for a while; if your claim happens to expire because you couldn't log in to reset the timeout, your Bolt locks will persist, keeping your items safe even on unclaimed land.

## Supported Containers
You can use Bolt to protect a variety of blocks, including:

- Chests and Trapped Chests 
- Barrels and Shulker Boxes 
- Furnaces, Blast Furnaces, and Smokers 
- Hoppers and Droppers 
- Doors, Fence Gates, and Trapdoors 
- Lecterns and Brewing Stands

## Locking A Container
Containers are not automatically protected when placed. You must manually manage your locks.

To lock a container, use `/lock [type]` or `/bolt lock [type]`. This command autocompletes in chat to help you select a protection type. If no type is specified, such as by simply running `/lock`, it will default to Private. See the [Lock Types](#lock-types) section below for available lock options.

To unlock a container and remove the lock from it, simply run `/unlock` or `/bolt unlock`.

To view details about an existing lock, including who owns it and who has access, use either the `/lock info` or `/bolt info` command.

After running any of the commands above, simply left-click the container of choice to apply the change to it.

## Managing Access
You can give specific players permission to access your locked containers without giving them full control over the lock itself.

To grant a player access to a container, run either `/lock add <playername>` or `/bolt edit add <playername>` (e.g., `/lock add Steve`) and left-click it.

In a similar manner, to revoke access from a player, run either the `/lock remove <playername>` or `/bolt edit remove <playername>` (e.g., `/lock remove Steve`) and left-click it.

## Lock Types
Bolt supports different types of protections depending on your needs. You can specify these by running either `/lock [type]` or `/bolt [type]` and clicking the block.

| **Type**   | **Description**                                                                                |
|------------|------------------------------------------------------------------------------------------------|
| Private    | The default lock; Only you (and added players) can access this container or view its contents. |
| Display    | Anyone can open the container to view the contents, but no one can add or remove items.        |
| Deposit    | Players can add items to the container, but they cannot withdraw anything.                     |
| Withdrawal | Players can take items out of the container, but they cannot add any item items.               |
| Public     | Open access for everyone to use, but only you (the lock owner) can break the container.        |