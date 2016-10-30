# SaerisDevTools
Saeris's personal developer tools for World of Warcraft addons

## Installation
Install like any other addon: download, extract, copy and paste into the World of Warcraft/Interface/AddOns directory. Just make sure the addon's folder starts with `!!` to match the `.toc` file.

## Linting
The addon uses [Luacheck](https://github.com/mpeterv/luacheck) for linting.

To lint, first ensure you have Lua 5.1 installed. For Windows, [Lua for Windows](https://github.com/rjpcomputing/luaforwindows) is a good option. Next, ensure you have Luacheck installed. (You can install it directly instead of through LuaRocks.)

After that, run a command similar to this from the addon's directory:
	`luacheck *.lua`
(From Git Bash on Windows, run `luacheck.bat` instead of `luacheck`.)
(From the Windows command prompt, list the individual `.lua` files instead of using `*` globs.)
