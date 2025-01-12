extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.name =="character":
		print ("personaje ha chocado") # pierde
		global.intento = global.intento + 1;
		print (global.intento)
		if(global.jugador ==2):
			print("ha chocado!")
		else:
			get_tree().change_scene("res://scenes/juego.tscn")
	if body.name =="character2jugadores_1":
		print("personaje jugador 1 ha chocado")
	pass # Replace with function body.


	
