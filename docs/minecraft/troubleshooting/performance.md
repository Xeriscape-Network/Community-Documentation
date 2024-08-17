# Performance Guide
Memory usage of Minecraft has changed over time with each new release either adding to or subtracting from the minimum amount of memory required to run the game at optimal performance. The general trend is that the memory footprint of Minecraft has increased over time and is majorly due to the changing vanilla landscape.

## Initial Steps
Identifying the root cause(s) of performance drops is a necessary step before optimizing Java and Minecraft's in-game settings. Beyond hardware considerations, primary factors contributing to performance issues in Minecraft are applications consuming significant resources and outdated or buggy Java JVM installations.

!!! tip "Performance Tweaks & Optimization"

	The techniques in this article offer general ways to enhance Minecraft performance, but optimization effectiveness may vary based on individual factors like hardware. Results may range from significant performance boosts for some players to negligible improvements for others.

### Closing & Disabling Apps
CPU usage is one of the main factors that influences performance in Minecraft. If your processor is constantly under load and is hitting peaks of over 80% usage while playing Minecraft, it is recommended to attempt to close some background applications that may be using your CPU runtime cycles alongside Minecraft.

Some examples of applications that will typically use large amounts of CPU cycles are Adobe applications (Photoshop, Illustrator, Evolve), recording suites, media players, and web browsers; Not all applications use large amounts of CPU cycles but it is recommended to watch for those that do and to not make use of them while playing Minecraft. 

Applications that launch alongside your operating system, startup applications, are also a large factor in consuming CPU cycles; You can disable startup applications on Windows using this [article](https://www.howtogeek.com/74523/how-to-disable-startup-programs-in-windows/) as reference.

### Installing & Updating Java
With the release of Minecraft's Caves & Cliffs (1.18) update in 2021, Mojang raised the minimum required Java version to Java 17 LTS for clients and servers alike. The major distributors of the compiled Java runtime are [Oracle](https://jdk.java.net/), [Azul](https://www.azul.com/downloads/), [Adoptium](https://adoptium.net/), [Amazon](https://docs.aws.amazon.com/corretto/), and [Eclipse](https://projects.eclipse.org/projects/technology.openj9); Azul's [Zulu builds](https://www.azul.com/downloads/?package=jdk#download-openjdk) of Java are the recommended builds for use with Minecraft.

To install and/or update Java, please refer to this [tutorial article](https://minecraft.wiki/w/Tutorials/Update_Java) on the Minecraft wiki.

!!! tip "Java Installation"

	The official Minecraft launcher has integrated Java, eliminating the need for a system-wide installation. Install Java only if you're running multiple Minecraft versions with varying JVM needs or using third-party launchers like [Prism](https://prismlauncher.org/).

## Optimizing Java & Minecraft

### Runtime Arguments
One of the first steps that we can take towards improving our client's performance is to tweak Java's JVM that Minecraft is built upon and runs on. The following Java arguments have been the go to standard for the modding community of Minecraft and will also improve performance for vanilla clients.

``` java title="JVM Arguments"
-Xmx4096M -Xms4096M -XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646
-XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20
-XX:MaxGCPauseMillis=51 -XX:G1HeapRegionSize=32M
```

An explanation of each of the Java arguments are as follows:

* **-Xmx4096M -Xms4096M** <br />
This flag configures the heap size to four gigabytes and keeps it pinned at four gigabytes. Minecraft tends to use a large amount of memory. It is recommended that the `-Xmx` and `-Xms` flags be the same value as it will guarantee that the heap given to the JVM for Minecraft will be fully utilized by Minecraft; If the heap needs to inflate, due to a lower heap minimum size, to the maximum size it may result in out of memory errors due to conflicts with other applications that are making use of the system memory. <br /><br />To change the amount of memory allocated to the JVM for Minecraft, multiply 1024 by the number of gigabytes that you wish to allocate; For example, three gigabytes is would be `1024 * 3` for a heap size of `3072`; The flags would be `-Xmx3072M -Xms3072M` to allocate three gigabytes to the JVM. It is also advised to not set the heap any amount lower than two gigabytes (`-Xmx2048M -Xms2048M`).<br />

	!!! warning "Java Virtual Machine Memory Allocations"

		Set the JVM heap size for Minecraft within the range of three to six gigabytes, avoiding allocation beyond 50% of your system memory. It's worth noting that exceeding eight gigabytes may lead to constant garbage collection, potentially hampering performance.

* **-XX:+UseG1GC** <br />
This flag enables the G1GC garbage collector; This is a great garbage collector for interactive applications, such as Minecraft. It tries to keep garbage collection predictable, so it never takes a long time (big lag spikes) and doesn't repeatedly take lots of short times which may lead to micro-stuttering.
* **-Dsun.rmi.dgc.server.gcInterval=2147483646** <br />
This flag configures the RMI (Remote Method Invocation) layer not to run a full garbage collection cycle every minute.
* **-XX:+UnlockExperimentalVMOptions** <br />
This flag unlocks and enables the usage of experimental JVM arguments.
* **-XX:G1NewSizePercent=20** <br />
This flag configures G1GC to put aside 20% of the heap as "new" space. This is space where new objects will be allocated, in general. You want a decent amount, due to Minecraft making a large amount of objects (such as BlockPos) and you don't want to have to run a collection whenever it gets full as this is a big source of micro-stutters.
* **-XX:MaxGCPauseMillis=50** <br />
This flag configures the G1GC to try and not stop for more than 50 milliseconds when garbage collecting, if possible. This is a target, and G1GC will ignore you if you put a silly number in like 1 which is unattainable. 50 milliseconds is the equivalent time of one server tick.
* **-XX:G1HeapRegionSize=32M** <br />
This flag configures G1GC to allocate it's garbage collection blocks in units of 32megs. The reason for this is that chunk data is typically just over eight megabytes in size, and if you leave it default of sixteen megabytes, it'll treat all the chunk data as "humungous" and so it'll have to be garbage collected specially as a result. This will especially help in modded causes as some mods tend to cause humongous allocations as well, such as JourneyMap.

### Client Video Settings
For clients, regardless of whether or not they are modded, the following video settings are recommended to be configured using the values below as a baseline:

| Video Setting        | Description                                                                      | Recommended Setting                                          |
| -------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------|
| Chunk Builder        | Determines which chunk sections are updated synchronously during a single frame. | Threaded; Nearby chunks are compiled in parallel threads.    |
| Render Distance      | Controls how many chunks of the world are visible around the player at once.     | 8 - 16 Chunks                                |
| Simulation Distance  | Controls how many chunks of the world are ticked around the player at once.      | Same value as Render Distance; If possible, two to four chunks below the Render Distance. |
| Mipmap Levels        | Downscales and filtered textures at a very far distance, primarily noticeable with leaf and other transparent blocks. | Level 4                 |

### Spark Profiler
Spark is a performance profiler for Minecraft clients, servers and proxies; It is available for both [Forge](https://modrinth.com/mod/spark/versions?l=forge) and [Fabric](https://modrinth.com/mod/spark/versions?l=fabric) mod loading platforms.

### Forge Mod Loader
Forge Mod Loader, FML, is a modding suite and loader for Minecraft mods. An installer for Forge can be downloaded from its [official website](https://files.minecraftforge.net/net/minecraftforge/forge/).

For individuals who wish to opt for a Forge installation of Minecraft, the following mods are recommended to aid in the optimization of their Minecraft instance:

* [OptiFine](https://optifine.net/downloads) - Optimized rendering engine created by sp614x
* [FerriteCore](https://www.curseforge.com/minecraft/mc-mods/ferritecore) - Memory optimizations
* [EntityCulling](https://www.curseforge.com/minecraft/mc-mods/entityculling) - Prevents the rendering of unviewable blocks, entities, etc.

Most of the mods listed above are installed by simply dragging and dropping the mod `*.jar` files into the `.\mods` directory of a Forge installation; OptiFine is the only mod that would really need some level of basic configuration before it can fully offer what it is capable of.

#### OptiFine
[OptiFine](https://optifine.net) is an optimization mod for Minecraft. It allows Minecraft to run at a higher, smoother frame rate by optimizing various aspects of the game, such as the game's rendering engine; It also includes additional graphical features as well such as shader support.

!!! info "Installing OptiFine Without Forge"

	Skip Forge and install OptiFine independently by running the `OptiFine_x.xx_xxx.jar` file; It creates a launcher profile with OptiFine pre-installed, but without support for additional mods

When it comes to configuring OptiFine, there is no "one size fits all" solution as various factors, especially hardware such as CPU/processor and GPU/video card, play a major role in the end result of your optimization efforts. The default settings that come with a fresh installation of OptiFine should provide a considerable improvement compared to a vanilla installation of Minecraft, but taking it a step further and configuring some settings may net additional performance out of the game from the mod.

As mentioned, the default settings should provide a basic level of performance improvement; Should you want to tweak some settings, we recommend experimenting with the following settings in your `Video Settings...`:

1. Set the `Mipmap Levels` to `Maximum` and `Mipmap Type` to `Nearest` in the `Quality Settings` page. If you utilize integrated graphics or have a weak graphics/video card, experiment with different settings to achieve the best level of performance.
2. Set `Render Regions`, `Smart Animations`, `Smooth FPS`, `Lazy Chunk Loading`, `Fast Render`, `Fast Math`, `Smooth World`, and `Dynamic Updates` to `ON` under the `Performance Settings` page to enable various optimizations for the game's rendering engine; Different combinations of these settings may need to be tested for the desired effect.
3. Experiment with different values for both of the `Chunk Updates` and `Chunk Builder` options in the `Performance Settings` page.
5.

### Fabric Mod Loader
Similar to Forge, [Fabric](https://fabricmc.net/) is a mod loader that allows individuals to create and install mods on both a client and server environment. [Quilt](https://quiltmc.org/) is a [fork of Fabric](https://quiltmc.org/about/) and offers compatibility with loading Fabric mods. Fabric can be downloaded from its [official website](https://fabricmc.net/use/installer/); An [installation guide](https://fabricmc.net/wiki/install) has also been created by the community for reference as needed. Quilt can be downloaded from its [project website](https://quiltmc.org/install/) as well, however, it is recommended to utilize Fabric over Quilt as Quilt is still in development which may result in unintended bugs and issues.

For individuals who wish to opt for a Fabric/Quilt installation of Minecraft, the following mods are recommended to aid in the optimization of their Minecraft instance:

* [Sodium](https://modrinth.com/mod/sodium) - Optimized rendering engine (think OptiFine but Fabric)
    * [NVidium](https://modrinth.com/mod/nvidium) - Replacement rendering backend for Sodium that uses Nvidia-only OpenGL extensions; Requires a Nvidia GPU that supports mesh shaders (16/20 series or newer).
* [Phosphor](https://modrinth.com/mod/phosphor) - Lighting engine overhaul
* [Lithium](https://modrinth.com/mod/lithium) - General purpose optimizations
* [FerriteCore](https://modrinth.com/mod/ferrite-core) - Memory optimizations
* [LazyDFU](https://modrinth.com/mod/lazydfu) - Defers unnecessary initialization of resources
* [C2ME](https://modrinth.com/mod/c2me-fabric) - Chunk rendering and management engine
* [Enhanced Block Entities](https://modrinth.com/mod/ebe) - Block entity rendering optimizations
* [More Culling](https://modrinth.com/mod/moreculling) - Prevents the rendering of unviewable blocks, entities, etc.
* [Sodium Extra](https://modrinth.com/mod/sodium-extra) - Adds additional configuration options to Sodium
* [Reese's Sodium Options](https://modrinth.com/mod/reeses-sodium-options) - Sodium settings UX improvements
* [Spark](https://modrinth.com/mod/spark) - Performance profiling and diagnostics

Most, if not all, of the mods listed above are installed simply by dragging and dropping the mod `*.jar` files into the `.\mods` directory of a Fabric installation; Some dependencies may be needed, such as the [FabricAPI](https://modrinth.com/mod/fabric-api) hooks, which will typically be listed on a given mod's page.

!!! info "Recommended Fabric Mods"

	The Fabric mods that have been listed above are the recommended mods to have active in a Fabric instance for optimizing Minecraft beyond the normal limits of what a Vanilla installation can achieve. Not all mods are required in order to achieve a basic level of optimization, and those who wish to have a Fabric installation with a minimal amount of mods can simply get by with the four mods of [Sodium](https://modrinth.com/mod/sodium), [Phosphor](https://modrinth.com/mod/phosphor), [Lithium](https://modrinth.com/mod/lithium), and [FerriteCore](https://modrinth.com/mod/ferrite-core).

#### Sodium Rendering Engine
This section is an overview of the main mod behind optimizing a Fabric installation, Sodium; Sodium is a rendering engine replacement for the Minecraft client which greatly improves frame rates and stuttering while fixing many graphical issues. It presents the player with a similar set of features that OptiFine offers, but for the Fabric modding API instead.

As detailed by [JellySquid](https://modrinth.com/user/jellysquid3), [by design, Sodium only optimizes the client rendering code](https://modrinth.com/mod/sodium#:~:text=Note%3A%20By,entire%20collection.). It is recommended to install their other mods of [Lithium](https://modrinth.com/mod/lithium) (general optimizations) and [Phosphor](https://modrinth.com/mod/phosphor) (lighting engine) to make full use of their entire suite of optimization and performance tweaks.

When it comes to configuring Sodium, there is no "one size fits all" solution as various factors, especially hardware such as CPU/processor and GPU/video card, play a major role in the end result of your optimization efforts. With the four mods of Sodium, Lithium, Phosphor, and FerriteCore installed, the default settings upon launching your Fabric installation should provide a considerable improvement compared to when you were running the game without these mods.

As mentioned, the default settings should provide a generous performance improvement; Should you want to tweak some settings, we recommend experimenting with the following settings in your `Video Settings...`:

1. Set the `Chunk Update Threads` to one or two processor threads and enable the `Always Defer Chunk Updates` option under the `Performance` tab.
2. Test various frame values for the `CPU Render-Ahead Limit` under the `Advanced` tab.

#### Phosphor vs Starlight
Starlight is a mod port of the popular lighting engine revamp from the [Tuinity server project](https://github.com/Tuinity/Tuinity); It has been ported to both the [Fabric](https://modrinth.com/mod/starlight) and [Forge](https://modrinth.com/mod/starlight-forge) modloaders by its original developer SpottedLeaf and is often seen in the modding community as an alternative to Phosphor for those who utilize fabric.

Starlight offers a massive performance advantage over Phosphor but brings along the disadvantage of being incompatible with many mods. Any mod that relies on hooking directly into the light engine will be broken by Starlight, since it is a complete rewrite of the game's lighting engine. You can find an active list of broken mods [here on its GitHub repository](https://github.com/PaperMC/Starlight/issues). Technical details have also been provided by SpottedLeaf that can be referenced on [PaperMC's GitHub repository for Starlight](https://github.com/PaperMC/Starlight/blob/fabric/TECHNICAL_DETAILS.md).

If you do not utilize any mods that hook into the game's lighting engine, it may be worth trying out Starlight to see if it offers a greater performance boost compared to what Phosphor can offer for your current configuration; Phosphor more stable compared to Starlight however so there is also that to consider when deciding whether to use Phosphor or Starlight.

#### Quality of Life Mods
The following Fabric mods offer extra cosmetic and/or quality of life features to a Fabric installation; These mods are purely optional but may offer benefits to an individual when installed and active on their Fabric installation.

* [Iris Shaders](https://modrinth.com/mod/iris) - Shader engine for Fabric; Supports OptiFine shaders
* [LambDynamicLights](https://modrinth.com/mod/lambdynamiclights) - Dynamic lighting effects
* [CIT Resewn](https://modrinth.com/mod/cit-resewn) - [CIT (Custom Item Texture)](https://bitbucket.org/prupe/mcpatcher/wiki/Custom_Item_Textures) support
* [Entity Texture Features](https://modrinth.com/mod/entitytexturefeatures) - Custom entity texture support (resource packs)
* [Custom Entity Models](https://modrinth.com/mod/cem/) - Custom entity model support (resource packs)
* [Ok Zoomer](https://modrinth.com/mod/ok-zoomer) - Zoom feature from OptiFine on Fabric
* [AppleSkin](https://modrinth.com/mod/appleskin) - Various food-related HUD improvements and information
* [Shulker Box Tooltip](https://modrinth.com/mod/shulkerboxtooltip) - Replaces shulker box descriptions with a preview GUI
* [Light Overlay](https://modrinth.com/mod/light-overlay) - Toggleable block overlay that shows spawning conditions
* [Capes](https://modrinth.com/mod/capes) - Enables the display of capes from OptiFine, Labymod, and MinecraftCapes

### Benchmark Environment

The following hardware was used in a testing environment to benchmark the client's performance with optimization configurations that were covered by the above sections:

<center>

| Hardware           | Description                          |
| ------------------ | ------------------------------------ |
| Processor (CPU)    | [Intel i7 4790K @ 4.00 GHz](https://www.intel.com/content/www/us/en/products/sku/80807/intel-core-i74790k-processor-8m-cache-up-to-4-40-ghz/specifications.html) ([Passmark](https://www.cpubenchmark.net/cpu.php?cpu=Intel+Core+i7-4790K+%40+4.00GHz&id=2275)) |
| Video Card (GPU)   | [NVidia Geforce GTX 1650 SUPER](https://www.videocardbenchmark.net/video_lookup.php?gpu=GeForce+GTX+1650+SUPER&id=4167) |
| Memory (RAM)       | 16 GB DDR3 1333MHz; 4 GB JVM allocation |

</center>

A world with the seed of `4298229390497635118` with the default world generation type was used during the benchmark; A second world, variant of the first world, with the world generation type set to amplified was also tested to ensure a basic level of performance and stability.

During the benchmark tests, the client had a render distance of 24 chunks with a simulation distance of 16 chunks; The client's performance never dropped nor was there any noticeable stuttering or lag spikes. The average FPS never managed to go below a minimum of 100 FPS.

## Community Modpacks

Two optimized modpacks, [Fabulously Optimized](https://modrinth.com/modpack/fabulously-optimized) and [Simply Optimized](https://modrinth.com/modpack/sop), created by members of the Minecraft community, are at the disposal of players seeking a convenient, prebuilt solution to enhance Minecraft performance.

Fabulously Optimized closely mirrors a Minecraft profile with OptiFine installed. [Fabulously Optimized can be downloaded from Modrinth](https://modrinth.com/modpack/fabulously-optimized/versions) and supports a wide range of Minecraft launchers with [Prism being the preferred launcher](https://wiki.download.fo/readme/install-instructions#prism-launcher).

[Simply Optimized can also be downloaded from Modrinth](https://modrinth.com/modpack/sop/versions); Like Fabulously Optimized, [the recommended launcher of choice for installation is Prism](https://github.com/HyperSoop/Simply-Optimized/wiki/Installation).

These modpacks serve as comprehensive solutions, streamlining the process for players looking to effortlessly enhance their Minecraft experience with performance tweaks and optimizations.