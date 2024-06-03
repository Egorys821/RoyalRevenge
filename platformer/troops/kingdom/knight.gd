extends CharacterBody2D

#movenet
@export var is_selected = false
@export var is_moving = false

#stats
@export var speed = 10000
@export var hp = 50
@export var damage = 10
@export var block_shance = 5

signal move(marker)

func _physics_process(delta):
	
	if is_moving:
		self.velocity= ($Target.position - self.position).normalized()  * speed * delta
		
		$AnimationPlayer.play("MOVE")
		$PawnRed.flip_h = $Target.position.x -self.position.x<0
	else:
		$AnimationPlayer.play("IDLE")
		self.velocity -= self.velocity * 0.5
	if (self.position-$Target.position).length() < 20:
		is_moving = false
	move_and_slide()


func _on_move(cords):
	$Target.position = cords
	is_moving=true
