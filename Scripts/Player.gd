extends Area2D

export var speed = 400

var bullet = preload("res://Scenes/Bullet.tscn")
var velocity

func run(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity = Vector2.LEFT * speed
	if Input.is_action_pressed("right"):
		velocity = Vector2.RIGHT * speed
	position += velocity * delta

func shoot():
	var b = bullet.instance()
	if Input.is_action_just_pressed("shoot"):
		add_child(b)
		b.transform = $BulletSpPos.transform

func _process(delta):
	run(delta)
	shoot()
