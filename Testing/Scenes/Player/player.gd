extends CharacterBody2D

var pos: Vector2 = Vector2.ZERO

#func _ready():


func _process(delta):

	var direction = Input.get_vector("left","right","up","down")

	velocity = direction * 500
	move_and_slide()
	
	#laser shooting input
	if Input.is_action_pressed("primary action"):
		print("shoot laser")
	if Input.is_action_pressed("secondary action"):
		print("shoot grenade")
