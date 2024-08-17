# Private Channels
The Xeriscape Network offers a system of facilitating the automation creation of voice channel creation through the Discord bot Voluspa. When a member joins the Create-A-Room voice channel, the bot will move them to a newly created private voice channel that they have control over.

This allows members to easily create their own private voice channels for use with their friends or team. The channel will also use the region of the channel host; For example, if a member is located in Australia and creates a private channel, their channel will used the Sydney voice region. This can be overridden with the selection of a `Region Override` in the channel settings should the channel owner opt to use a different voice region.



## Creating a Room
To create a private room, join the **create-a-room** voice channel under the `Private Rooms` category in the Discord server; Voluspa will create a new voice chat channel that is only accessible by you and will move you to it momentarily.

### Managing Access
Upon being moved to your new private voice chat channel, you will be the only one able to access the channel besides Voluspa.

To grant other members access to your channel, you can use the `.room allow <User ID/Mention>` command; Upon sucessful execution, the provided member will be able to connect to your channel as well as send messages in the text-in-voice section of the channel.

To revoke access to the channel and kick members that you have given access to, you can use the `.room deny <User ID/Mention>` command; The provided member will no longer be able to access the channel, and if they were connected at the time of execution, they will be kicked from the voice-chat as well.

### Automatic Cleanup
Once a private room is empty, Voluspa will delete the room; This helps keep the Discord server organized and free of unnecessary channels.