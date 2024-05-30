extends Sprite2D

var speed = 400
var angular_speed = PI


func _process(delta):
	var direction = 0
	if Input.is_action_pressed("a"):
		direction = -1
	if Input.is_action_pressed("d"):
		direction = 1

	rotation += angular_speed * direction * delta

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT.rotated(rotation) * speed
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT.rotated(rotation) * speed
	position += velocity * delta



func _on_button_pressed():
	visible = not visible
