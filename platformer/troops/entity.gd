extends CharacterBody2D
class_name Entity



func _physics_process(delta):
	# Add the gravity.
	self.rotation+=1
	
	# Handle jump.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
