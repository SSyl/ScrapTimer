# Scrap Timer
Powershell Script that calculates 4 hours and 20 minutes between each "Scrap Drop" for the Texas 420 server in the game Rust.

## Why did you make this?

The Texas 420 Rust server doesn't have chat commands enabled for some odd reason. Facepunch allows admin/moderation and chat plugins while still remaining in the community server list, as explained on Facepunch's site [here](https://support.facepunchstudios.com/hc/en-us/articles/360009062817-Guidelines-for-community-servers-using-plugins-mods), so I don't see a reason they wouldn't include it.

On top of that, if they just really, really didn't even want to use plugins, you can actually just use RCon and have it autorespond whenever it reads someone saying something like !pop, !wipe, !scrap or !420 in chat, so I'm really not sure why they don't just add it.

Either way, as a solution to that, I made this Powershell script.

## How to use

You can use it a few different ways. The easiest would be if you have a keyborad that supports macros (such as a Logitech or Corsair keyboard). That way you can easily bind one of your keys to launch the Powershell script.

If you don't have a keyboard that allows remapping by default, there are a number of programs that let you assign keybinds. I won't recommend any in particular, but a Google search should bring up some good options.

I've also included a .bat file that simply runs the Powershell script, as some hotkey programs and keyboards don't allow directly launcher a powershell script for some reason, but allow .bat files.
