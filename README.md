# Totally Wild Horses

RedM script to add custom wild horse spawns for specified horse models. By default, this script adds specific spawn
locations for all horse breeds/models in the base game.

# Features

- Customizable spawn locations and models for groups of horses (grouped by breed by default)
- Customizable spawn rates for each group of horses
- Customizable spawn area radius and distance from player
- Customizable spawn check time (check if player is in spawn area every x seconds)
- SpawnWildHorse command (uncomment to enable)
- Toggle-able debug mode

# Usage

This script comes pre-configured, and all settings and spawn groups/locations can be changed in `horse_data.lua`.
Simply download this resource, and place the `totally_wild_horses` folder inside your server's `resources` folder.
Tweak any settings you want, and restart the server or use the command `refresh` followed by `ensure
totally_wild_horses` to load the resource.

# Wild Horse Map<br>(pre-configured spawn locations, including base game spawns)

![map](https://github.com/totallyrin/totally_wild_horses/assets/1056415/4df75d09-0424-4e33-91d8-de482c3458c4)

# Notes

This script DOES NOT alter any of the game's existing spawnpoints. This script only adds "new" spawn areas around the coordinates specified in `horse_data.lua`. In theory, this script should work without issue with all existing scripts as it does nothing other than spawn horses near the player.

Since this is a client-only script, a max of one horse is spawned per area per player, but the total number of horses in the area is not limited. That is, if two players are in the same spawn area, up to two horses will spawn, one for each player (dependent on spawn rate).

The horses can be quite difficult to find once they are spawned, since the spawn area is fairly large (default 100.0), and the horses can spawn anywhere within that area. This also can lead to horses spawning in odd locations, such as up on a cliff. If this behaviour is not desired, then my suggestion would be to decrease the spawn area size (perhaps to 25 or 50, and adjust the spawn distance from player accordingly) and then decrease the spawn probability for those horses. This will make the horses easier to find once they have spawned, but they will be less likely to spawn.
