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

### Screenshots
![Screenshot-1](https://i.imgur.com/YX20P4Z.jpg)
![Screenshot-2](https://i.imgur.com/gQgE0SX.jpg)
## How to use
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

You can add your own custom api endpoint to the config to enable an external data source for the welcome screen. 
Just make sure the endpoint returns the payload in the correct format (`json / Array of tabs`): 
```json
[
	{
		"label" : "Tab 1",
		"text"  : "<h1>Tab 1 Header</h1>"
	},
	{
		"label" : "Tab 2",
		"text"  : "<h1>Tab 2 Header</h1>"
	},
	,
	{
		"label" : "Tab 3",
		"text"  : "<h1>Tab 2 Header</h1>"
	}
]
```
