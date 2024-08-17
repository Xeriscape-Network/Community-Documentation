# Chat System
On Telzenith, in-game chat is available for players to partake in; It is also divided into multiple channels with specific topics to keep chat organized. By default all channels are opted into upon your first time connecting to the network; After this, you may opt to leave specific channels with a few exceptions to some channels such as the Network Alerts channel.

## Channel Directory
The following channels are available to all players on Telzenith.

### Chat Channels
* **Global** (`/ch global` or `/ch g`)<br />
This is the main server-wide channel. You can chat here with whoever is currently part of this channel. If it gets too spammy and noisy just leave it and stick to the local channel to chat with people currently around you.
* **Local** (`/ch local` or `/ch l`)<br />
This is the local channel that consists of chat specific to the server that you are currently connected to. Here you can only see messages from people and speak to people that are within 500 blocks away from you in any direction. This channel is especially useful when you are working on a project with someone; If you want to focus with the people in your area only, just leave the global channel. This way only people that are near you will be heard. If you need to speak to someone either join the global channel back or if no one is there, message someone that is online with the `/msg` command.
* **Trade** (`/ch trade` or `/ch tr`)<br />
Dedicated trade channel for player discussed on trading, service advertisements, and shop promotions. To maintain a streamlined communication experience, players are limited to sending one unique message per five minutes, ensuring that discussion remains focused and on topic.
* **McMMO** (`/ch mcmmo` or `/ch m`)<br />
This is the McMMO party channel. This is our alternative solution to McMMO's party chat system as it allows all players of a party to have their own private party chat to communicate with each other, even if they are spread across the network on separate servers. All players have access to the McMMO party channel however they must be in an McMMO party in order to send and receive chat messages into the channel; If you join the McMMO party channel without being in a party, your messages that you send will not be viewable by anyone as only players in the same party can view party chat messages.

### Exclusive Channels
* **VIP** (`/ch vip` or `/ch v`)<br />
Cross-network chat channel reserved for supporters of The Xeriscape Network.

### Information Channels
* **Alerts**<br />
This channel is where all network alerts and announcements will be posted. Players cannot send messages in this channel, nor can they leave it. It is simply a channel with the sole purpose of allowing notices to reach players. Some items that may be posted in this channel include upcoming restarts, upcoming maintenance, or any event notices.
* **Tips**<br />
This channel is where all network alerts and announcements will be posted. Players cannot send messages in this channel, nor can they leave it. It is simply a channel with the sole purpose of allowing notices to reach players. Some items that may be posted in this channel include upcoming restarts, upcoming maintenance, or any event notices.

## Chat Commands
Participation in channels on Telzenith is easily managed through either the intuitive `/chat` GUI or a set of commands designed for player convenience. Players can interact with channels using the following `/channel` commands; Additionally, the alias `/ch` can be used in place of the full command:

* `/ch <channel>`<br />
Focus on a specified channel or join and immediately focus on it.
* `/ch join <channel>` or `/ch j <channel>`<br />
Join a channel and focus on it.
* `/ch leave <channel>` or `/ch l <channel>`<br />
Leave a channel and stop receiving messages from it.

### Ignore System
Telzenith's Ignore System offers players the ability to refine their chat experience by selectively filtering out messages from specific users. Utilizing the following commands:

* **/ignore**<br />
Displays the ignore system's help page prompt.
	* **/ignore <player\>**<br />
	Toggle the ignore status for a specified player, hiding their messages from view.
	* **/ignore list**<br />
	Display a list of actively ignored players.

!!! info "Private Messages & Player Mail"
	If a player is ignored, they are also restricted from sending private messages and mail to the player ignoring them.

## Message Forwarding
Communication on Telzenith involves more than just exchanging words; it's about conveying messages seamlessly through various channels. Players can use different prefixes to customize messages for specific chat channels, making interactions more engaging. Here's a quick overview of the available prefixes and their associated chat channels:

The `!` prefix serves as a universal key to the global chat channel. Regardless of a player's currently focused channel, typing `!Hello global chat!` will send the message `Hello global chat!` to the Global chat channel.

Messages prefixed with a period (`.`) find their way exclusively to the Local chat channel. For instance, typing `.Greetings locals!` ensures that the message `Greetings locals!` is communicated solely within the immediate vicinity covered by the Local chat channel.

The tilde (`~`) symbol is reserved for the McMMO party chat channel. When a player wants to communicate exclusively within their party, typing `~Let's party!` will send the message `Let's party!` to the McMMO party chat where only members of that player's McMMO party will be able to view it.

Discord Boosters and supporting players can utilize the caret (`^`) symbol to engage in exclusive conversations. Typing `^Greetings VIPs!` will send the message `Greetings VIPs!` to the VIP chat channel.

The octothorpe (`#`) remains the steadfast indicator for the trade chat channel. Players can initiate trade-related discussions effortlessly by prefixing their messages with #Looking to trade items!.

These distinct prefixes allow players to send messages to specific channels without the need to focus on said channels. This enhances the efficiency of message sending and streamlines communication within the server network.

## Placeholders
In Minecraft, players can enhance their in-game communication by utilizing specific chat placeholders enclosed in square brackets `[<placeholder>]`. These placeholders serve as convenient shortcuts for displaying various information during conversations. Below is a comprehensive list of available chat placeholders:

- `[bal]` or `[balance]`<br />
Prints the sending player's current balance in chat.
- `[echest]`, `[ender]`, or `[enderchest]`<br />
Generates a link within chat, allowing players to view the sender's ender chest.
- `[gametime]`<br />
Prints the current time of the world that the player is in.
- `[inv]` or `[inventory]`<br />
Generates a link within chat, allowing players to view the sender's inventory.
- `[item]`<br />
Displays the item held in the player's main hand in chat.
- `[ping]`<br />
Prints the current player's ping to chat.
- `[pos]` or `[loc]`<br />
Prints the current world and coordinates of the player.
- `[time]`<br />
Prints the current time of the server.

These chat placeholders provide a practical means for players to share relevant information with others in a streamlined and accessible manner. Whether checking inventories, sharing coordinates, or displaying in-game time, these placeholders contribute to a more efficient and informative communication experience in the Minecraft world.
