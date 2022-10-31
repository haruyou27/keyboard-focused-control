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
	
	var container :GridContainer = get_edited_object()
	var nodes :Array = container.get_children()
	var size := nodes.size()
	var i := 0
	
	for node in nodes:
		if not node is Control:
			nodes.remove(i)
		else:
			i += 1
	
	i = 0
	for node in nodes:
		node.focus_neighbour_left = '../' + nodes[i-1].name
		node.focus_neighbour_right = '../' + nodes[0-size+i+1].name
		
		node.focus_next = node.focus_neighbour_left
		node.focus_previous = node.focus_neighbour_right
		
		i += 1
	
	var v_nodes := []
	for index in range(container.columns):
		v_nodes.append_array(nodes.slice(index, size, container.columns))
	
	i = 0
	for node in v_nodes:
		node.focus_neighbour_top = '../' + v_nodes[i-1].name
		node.focus_neighbour_bottom = '../' + v_nodes[0-size+i+1].name
		
		i += 1
		
	button.text = 'Done'
	
