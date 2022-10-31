extends EditorProperty

var button := Button.new()

func _init():
	label = 'Assign focus neighbour'
	button.text = 'Run'
	button.connect("pressed", self, '_assign')
	add_child(button)
	add_focusable(button)
	
func _assign():
	var nodes :Array = get_edited_object().get_children()
	button.disabled = true	
	
	var i := 0
	for node in nodes:
		if not node is Control:
			nodes.remove(i)
		else:
			i += 1
	
	i = 0
	var size := nodes.size()
	for node in nodes:
		node.focus_neighbour_left = nodes[i-1].get_path()
		node.focus_neighbour_right = nodes[0-size+i+1].get_path()
		
		node.focus_neighbour_top = node.focus_neighbour_left
		node.focus_neighbour_bottom = node.focus_neighbour_right

		node.focus_next = node.focus_neighbour_right
		node.focus_previous = node.focus_neighbour_left
		i += 1
	
	button.text = 'Done'
