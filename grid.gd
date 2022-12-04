extends EditorProperty

var button := Button.new()

func _init():
	label = 'Assign focus neighbour'
	button.text = 'Run'
	button.connect("pressed", self, '_assign')
	
	add_child(button)
	add_focusable(button)
	
func _assign():
	button.disabled = true
	
	
	
