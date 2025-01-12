extends KinematicBody2D
#posicion
var posicion = Vector2(0,0)
#salto
var up = Vector2(0,-1)
#movimiento 
var motion = Vector2()
# creamos las variables con el valor para el movimiento
var gravity = 23
var speed = 450
var jump = -890
var touch_jump = false



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#cargar posicion si entramos en pausa

	#score
	$n_intento.text = str(global.intentoj1)
	motion.y += gravity
	posicion.x = posicion.x + 1
	motion.x = speed
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up") or touch_jump:  #tenemos q poner q toque la pantalla
			if (global.character == 2):
				$animacion.play("jump2")
			if (global.character == 1):
				$animacion.play("jump")
			motion.y = jump
		else:
			if (global.character == 2):
				$animacion.play("default2")
			if (global.character == 1):
				$animacion.play("default")

		#print ("salto mortal")
	#mover y saltar
	motion = move_and_slide(motion, up)
		
	pass


	
	pass # Replace with function body.




func _on_jump_pressed(): #se toca la pantalla y salta
	touch_jump = true
	print("pantalla tocada")
	pass # Replace with function body.


func _on_jump_released(): #se suelta la pantalla
	touch_jump = false
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	print("tocado")
	pass # Replace with function body.


func _on_jump_2_pressed():
	touch_jump = true
	pass # Replace with function body.


func _on_jump_2_released():
	touch_jump = false
	pass # Replace with function body.
