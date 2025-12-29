---
icon: lucide/gavel
tags:
  - Minecraft
---

# Auction House
The Auction House is your central hub for listing items for sale to the entire server and purchasing items listed by other players. It's also the ideal place for potential bidding wars.

## Accessing the Auction House
You can access the Auction House from anywhere on the server using the `/ah` command.

This command opens the auction house GUI where you can browse all currently listed items. The entire auction house including buying, collecting returns, and viewing your active listings, is managed entirely through this GUI.

## Listing For Sale
To list an item for instant purchase (Buyout), hold the item or stack in your main hand and use the command `/ah sell <price>`. This functions similar to a server wide chest shop where players can immediately buy the item for the set price. Sale listings will automatically expire after 7 days.

### Listing Fees & Taxes
Please note that all direct listings (`/ah sell`) are subject to a 10% sales tax. This cut is applied upon a successful sale and covers the convenience of listing your items to the entire server globally. Some examples:

- Stack of Diamonds for $500; You receive $450 after the 10% cut
- Enchanted Diamond Sword for $2,500; You receive $2,250 after the 10% cut
- Large bulk sale for $10,000; You receive $9,000 after the 10% cut

!!! info "Prefer No Sales Tax?"

    If you'd rather keep 100% of your profits, you can set up a [ChestShop](./chestshop) in your claim and create a [warp](../warps) to it. While players will need to visit your physical shop location, there are no listing taxes involved!

## Purchasing An Item
When you find a listing in the auction house marked for instant sale (Buyout), purchasing it is quick and simple. Ensure you have the full funds available in your balance (`/bal`) and space in your inventory.

If the item you are purchasing is an item stack (e.g., 64 cookies listed together), left-clicking the listing will open a secondary GUI. This menu allows you to specify or adjust the quantity you wish to buy before confirming the purchase, in case you don't want to buy the entire stack.

## Listing For Auction
To start an actual bidding auction on an item, you can use a command or the dedicated GUI:

- **Command Method:** Similarly to listing an item to sell, hold the item or stack in your main hand and use `/ah bid <start amount>`. This lists the item with the starting price you specify. Auctions are active for a fixed duration of 3 days.
- **GUI Method:** while holding the item or stack in your main hand, run the command `/ah auction` to open a menu that guides you through the process of setting the starting bid.

## Placing a Bid
When you browse the auction house and find an item open for bidding, placing a bid is done as simple as left-clicking on the item in the GUI. Upon clicking, a secondary GUI will open. This menu will allow you to specify or adjust the bid you would like to place on that item/item stack.