---
icon: lucide/messages-square
tags:
  - Minecraft
---


# Chat System
Our server uses a structured chat system to help manage communication, distinguish between nearby conversations and global announcements, and provide players with the tools they need for privacy.

## Channels
The chat system is split into multiple channels, each with a specific topic and function. This structure helps keep communication organized and relevant to different player activities.

### Main Channels
We utilize the following channels for general conversation. Using the correct channel helps keep the main chat clean and relevant.

| Channel | Scope                                            | Description                                                                                                                                                                         |
|---------|--------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Global  | All players on the server and bridged to Discord | General server-wide conversation. This channel is bridged with the [#minecraft](https://discord.com/channels/555868544244514836/1056848934716309594) channel on the Discord server. |
| Local   | Players within a short radius (500 blocks)       | Only nearby players will see your message, which is helpful for coordinating with people around you.                                                                                |
| Trade   | All players on the server                        | Reserved specifically for trading, selling items, advertisement of services, and player shop promotion.                                                                             |

### Specialized Channels
These channels are reserved for specific groups of players or in-game functions.

| Channel | Requirement                                  | Description                                                                              |
|---------|----------------------------------------------|------------------------------------------------------------------------------------------|
| McMMO   | Must be in an McMMO party with other players | This is a private chat channel only visible to members of your current McMMO party.      |
| VIP     | Must be a supporter of Xeriscape/Telzenith   | Reserved exclusively for supporters of the Xeriscape Network/Telzenith Minecraft server. |


### Notice Channels
These channels provide important server-wide information and cannot be used for conversation.

| Channel       | Description                                                                                                                                                         |
|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Announcements | Server-wide announcements related to essential events like shutdowns, maintenance, and major updates. All players receive these notices and cannot opt-out of them. |
| Tips          | Helpful, cycling tips that appear as the server is online. Can be toggled with `/tips`.                                                                             |

### Message Prefixes
For quick, one-off messages to a specific channel without changing your active chat, you can prefix your message with a corresponding symbol. This allows you to send a message to any of the chat channels, regardless of which channel you are currently focused on.

| Prefix | Channel | Example                                    |
|--------|---------|--------------------------------------------|
| `!`    | Global  | !Hey, welcome to the server.               |
| `.`    | Local   | .Would you like some wheat from my farm?   |
| `$`    | Trade   | $I'm selling a full set of netherite gear! |
| `~`    | McMMO   | ~Let's focus on mining resources for now.  |
| `^`    | VIP     | ^Is the new private warp set up yet?       |


### Channel Management
For a visual way to manage your chat preferences, use the chat GUI, accessible via `/chat` or `/channels`. This GUI allows you to manage channel subscriptions, toggle channel prefixes, and control direct message reception.

You can also use these text commands for quick channel switching and subscription management. The short form for the command is `/ch`, and the actions can also be abbreviated too with `j` for join and `l` for leave.

| Command                    | Alternates                                  | Function                                                                                                                                                      |
|----------------------------|---------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `/chat`<br>`/channels`     | N/A                                         | Opens the Chat Management GUI. Use this to manage subscriptions, prefixes, and direct messages.                                                               |
| `/ch <channel>`            | `/channel`                                  | Sets your default active chat channel for messaging. Channel aliases include: `g` (Global), `l` (Local), `t` (Trade), `p` (McMMO Party), and `v` (VIP).       |
| `/channel join <channel>`  | `/ch j`<br>`/channel j`<br>`/channel join`  | Joins a chat channel, allowing you to view its messages. If you are already in this channel, it focuses it instead, making all chat messages be sent into it. |
| `/channel leave <channel>` | `/ch l`<br>`/channel l`<br>`/channel leave` | Leaves the chat channel. You will no longer receive messages from this channel.                                                                               |


## Private Messages
For one-on-one conversations, you should always opt for private messages. This ensures your conversation is private and doesn't interfere with the main chats.

| Command                   | Function                                                | Example                          |
|---------------------------|---------------------------------------------------------|----------------------------------|
| `/msg <player> <message>` | Sends a private message to the specified player         | `/msg jeb_ I found emeralds!`    |
| `/r <message>`            | Reply to the player who last sent you a private message | `/r Great! I'll be right there!` |


You can use the `/msgtoggle` command to toggle your ability to receive private messages. This is useful if you are AFK or do not wish to be disturbed, as players attempting to message you will be notified that you are unavailable.

## The Ignore System
Players have the ability to manage their in-game privacy and control communication. Since we use a custom chat setup, standard features like the [Social Interactions screen](https://minecraft.wiki/w/Social_interactions) and built-in chat message reporting are unavailable. As a result, the `/ignore` system is provided as an alternate solution for managing who can contact you.

| Command            | Function                                                                                                                                                                                                                                                                                                                      |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `/ignore <player>` | Toggles whether you receive any messages (public or private) from the specified player. If already ignored, this command unignores them. Players attempting to message you will be notified that you have ignored them. **Staff members cannot be ignored and will be able to reach/message you regardless of this setting.** |
| `/ignorelist`      | Shows you a list of all players you are currently ignoring.                                                                                                                                                                                                                                                                   |