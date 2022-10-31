extends EditorProperty

var button := Button.new()

func _init():
	label = 'Auto assign'
	button.text = 'Run'
	button.connect("pressed", self, '_assign')
	
func _assign():
	var nodes :Array = get_edited_object().get_children()
	
	
