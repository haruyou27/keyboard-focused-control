extends EditorInspectorPlugin

var box := preload("res://addons/keyboard-focused-control/box.gd")

func can_handle(object):
	return object is BoxContainer or object is GridContainer

func parse_category(object, category):
	if category != 'Control':
		return
		
	if object is BoxContainer:
		add_property_editor('', box.new())
	elif object is GridContainer:
		pass
	
