# VU Welcome Screen Mod
VU _/vi:ju:/_ is a community-oriented Battlefield 3 modding platform that gives you back control of your gaming experience ([LINK](https://veniceunleashed.net/)). `vu-welcome-screen` is a simple VU extension for server owners to welcome joining players. 

⚡ **WORK IN PROGRESS** while the mod is still in development , the first stable [release](https://github.com/turbopasi/vu-welcome-screen/releases) can already be used on your VU-BF3 Server. Please let us know about any issues or questions.

### Features
- General VU-like styles and look
- Customizable colors
- Content supports and renders **HTML**
- Content supports 😀⭐🦀 Emojis
- Multiple Tabs
- Content fetching from external source possible
- Easy config

### Table of contents
- [How to use / Add to VU server](#how-to-use--add-to-vu-server)
- [How to develop / contribute](#how-to-develop--contribute)
- [Loading content from external source](#loading-content-from-external-source)
- [Loading content from mod config (locally)](#loading-content-from-mod-config-locally)

### Screenshots
![Screenshot-1](https://i.imgur.com/YX20P4Z.jpg)
![Screenshot-2](https://i.imgur.com/gQgE0SX.jpg)

## How to use / Add to VU server
Go to [Releases](https://github.com/turbopasi/vu-welcome-screen/releases), download the latest release of the mod and add the `vu-welcome-screen` folder to your server directory structure:
```bash
	Server/
		/Mods
			/vu-welcome-screen
				ext/
				mod.json
				ui.vuic
		
```
Also add `vu-welcome-screen` to your `modlist.txt`.

## How to develop / contribute

```
git clone https://github.com/turbopasi/vu-welcome-screen
cd vu-welcome-screen
cd ui
npm install
```
Then start the dev server
```
cd vu-welcome-screen
cd ui
npm run serve
```
Then build and generate ui.vuic  file
```
cd vu-welcome-screen
cd ui
npm run build
```

## Loading content from external source

You can add your own url (`externalSource`) to the config to enable an external data source for the welcome screen. 
Just make sure the url returns the correct format : 
```html
<tab>
  <label>💻 Server Info</label>
  <content>
    <h1>Server Info</h1>
    Here goes your HTML Content<br>
    <i> This is some </i> example <strong>HTML content</strong>.
    It does also support ⭐🥨🚚 Emojis !
  </content>
</tab>
      
<tab>
  <label>🐞 Known Bugs</label>
  <content>
    <h1>Known Bugs</h1>
  </content>
</tab>
```

## Loading content from mod config (locally)

If you wish to add the tabs content through the mods configuration, just add a `tab.lua` file under `ext/shared/tabs/` in the following format: 
```lua
return {
  label = "💻 Server Info",
  text = [[
  <h1>Server Info</h1>
	Here goes your HTML Content<br>
  ]]
}
```
Then, in `ext/shared/config.lua` add the following line under `tabs`:
```lua
tabs = {
  require('__shared/tabs/tab.lua')
}
```
