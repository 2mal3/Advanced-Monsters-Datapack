# Advanced Monsters Datapack
![GitHub release (latest by date)](https://img.shields.io/github/v/release/2mal3/Advanced-Monsters-Datapack?style=flat-square) ![GitHub all releases](https://img.shields.io/github/downloads/2mal3/Advanced-Monsters-Datapack/total?style=flat-square) ![GitHub](https://img.shields.io/github/license/2mal3/Advanced-Monsters-Datapack?style=flat-square)

This datapack adds the chance for normal monsters to become advanced monsters. These monsters are faster, stronger and have more lives, so the game becomes a bit more difficult. That is all.

## 📖 Features:
- Adds a little challenge to the game
- Performant
- Multiplayer compatible
- Easy to configure
- Good compatibility with other datapacks

## ⚙ Settings:
The command: `scoreboard players set $transform_chance admo.data <number>` can be used to set the probability of spawning the advanced monsters. The probability is calculated with **1 / the set number**. Example: If you set as the number **20** the probability is **5%** (1 / **20** = 0.05 = **5%**).                         
If the number is **1**, every monster is advanced. If the number is **0**, no monster is advanced.

## 📝 Exact information about advanced monsters:
- 70% more damage
- 50% more life
- 20% faster attacks
- 30% larger range
- 20% faster

***

## 📊 Bug reports:
I do test my datapack, but I do not find all the bugs. To improve the quality, it helps a lot if you tell me about any bugs you find, so I can fix them. You can do this either on the [Planet Minecraft](https://www.planetminecraft.com/data-pack/advanced-monsters-datapack/) website as a comment or on the [GitHub](https://github.com/2mal3/Advanced-Monsters-Datapack/issues) website as an issue. To help me better, it would also be handy if you debug the datapack. You can do this by simply run the command
`/function #2mal3:neel/debug`
and write the displayed message into the bug report.

## 💾 Versions:
| ✅   | 1.16+        |
| --- | ------------ |
| ✅   | Singleplayer |
| ✅   | Multiplayer  |
| ✅   | Vanilla      |
| ✅   | Fabric       |
| ❔   | Forge        |
| ❔   | Realms       |
| ❔   | Bukkit       |
| ❔   | Spigot       |
| ❔   | PaperSpigot  |

## 🚀 Performance:
Normally, the datapack has almost no noticeable impact on performance, but at very high mob spawn rates (large servers, mob farms, etc.) there may be small lags.

## ✅ Compatibility with other datapacks:
The datapack should be compatible with most datapacks as long as they are not:
- Change blocks at 9232029 1 6397680
- Remove all forceloaded areas
- Use monsters whose names or abilities are important (Unimportant if this datapack follows the [datapack conventions](https://mc-datapacks.github.io/en/)).

***

## 🔄 Updating:
Just replace the old datapack file with the new one and reload the world. The rest is done by the datapack.

## ♻ Uninstallation:
- Execute the command `/function #2mal3:admo/uninstall`
- Confirm that you want to uninstall the datapack
- Optional: Delete the datapack file from the datapack folder of the world
- Reload the world
