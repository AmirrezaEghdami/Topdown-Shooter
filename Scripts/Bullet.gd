extends Area2D

export var bullet_speed = 600


func _process(delta):
	position += Vector2.UP * bullet_speed * delta
	


func _on_RigidBody2D_body_entered(body):
	var body_name = body.name
	if body_name.begins_with("Zombie"):
		body.queue_free()
	queue_free()
		
