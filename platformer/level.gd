extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		$knight.emit_signal("move", event.position)

   # Print the size of the viewport.
	print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)
