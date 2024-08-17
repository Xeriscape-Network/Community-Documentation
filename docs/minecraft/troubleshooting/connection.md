# Connectivity

Connection issues that you may encounter while playing on Aurelium can be caused by a large range of issues. It could be related to your internet connection or something on the server itself. 

This article will walk you through various methods to help diagnose your internet connection to the server in order to help provide further assistance on fixing your issue. 


!!! warning "High Latency"

	Playing on Telzenith with a ping of 300ms or higher will present noticeable interruptions while on the server. You can check your current ping at any time in the player tablist as well as through the `/ping` command.

## General Solutions
- Remove any modifications currently installed
- Change game settings to less intensive options
- Restart the Minecraft game client and launcher
- Change your version of Minecraft to match the version that the server is using
- Completely shutdown and restart your computer
- Flush your system's Domain Name System (DNS) cache

=== "Windows"

    - Run Command Prompt as Administrator
	- Run the command `ipconfig /flushdns`
	- Run the command `ipconfig /registerdns`
	- Close Command Prompt

=== "Mac OS"

    - Open Terminal
	- Run the command `sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder` in the Terminal
	- Enter your user account password when when prompted

	!!! warning "High Latency"
		
		The command used to flush your DNS cache on Mac OS varies by version. 
		
		https://www.freecodecamp.org/news/how-to-flush-dns-on-mac-macos-clear-dns-cache/

=== "Linux"

	The easiest way to flush the DNS on Linux, if you are using `systemd-resolved`, is to use the `systemd-resolve` command followed by `--flush-caches`. Verify that the cache has been cleared by: `sudo systemd-resolve --statistics`

	Alternatively, you can use the `resolvectl` command followed by the `flush-caches` option.
	
	``` py linenums="1"
	sudo systemd-resolve --flush-caches
	sudo resolvectl flush-caches
	
	```
	
	https://tecadmin.net/flush-dns-cache-ubuntu/

	=== "Debian / Ubuntu"
	
		This is placeholder text

	=== "Arch Linux"
	
		This is placeholder text


**Internal Exception: java.net.SocketException: Connection Reset**

- Restart and reconnect to your router/gateway/modem.
  - If the issue persists after this is it advised to contact your service provider.
- Ensure that Java is up to date with the latest release
- Ensure that you have the most [up-to-date Minecraft launcher](https://www.minecraft.net/en-us/download).

**java.net.ConnectException: Connection timed out: no further information**

- Ensure that you are using `telzenith.xyz` or `xeriscape.network` to connect to the server.
- Ensure that the server is online and didn't go offline due to maintennace or any other reason
- Ensure that your system's firewall is allowing connections to and from the server
- Ensure that your internet connection didn't go offline