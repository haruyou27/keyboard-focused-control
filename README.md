
# Keyboard Focused Control
Wonder why child nodes of __Box/Grid Container__ can arrange themselves pefectly based on the scene tree but do not know their focus neighbour ?

This plugin will save you the trouble of assign them yourself.

# Installation
Download or clone or add this repository as a submodule into your `res://addons/` folder.

Go to your _Project Setting -> Plugins_ and enable this plugin.

# How to use
Click on your __Box/Grid Container__ node, you should see a new property right below __Control__ category labeled _Assign focus neighbour_ and a __Run__ button next to it.

Click on that button, if the text changes into _Done_, go ahead and test it out.

Please open an issue if it doesn't.

Note: You must grab focus on a control node first if you dont want to touch the mouse with `.grab_focus()`.

# Auto assign when scene tree changed ?
My script inhernits from __EditorPlugin__ so it won't run on release build.

You can copy my function and add it to your __Box/Grid Container__ script.

# License
[MIT](https://choosealicense.com/licenses/mit/)
