tool
extends EditorPlugin

var plugin := preload("res://addons/keyboard-focused-control/InspectorInterface.gd").new()

func _enter_tree():
	add_inspector_plugin(plugin)

func _exit_tree():
	remove_inspector_plugin(plugin)
