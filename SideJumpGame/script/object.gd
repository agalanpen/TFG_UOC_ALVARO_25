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
		$sonido_m.playing=true
		print ("personaje ha chocado") # pierde
		global.intento = global.intento + 1;
		print (global.intento)
		if(global.jugador ==2):
			print("ha chocado!")
		else:
			if (global.nivel_s ==1):
				get_tree().change_scene("res://scenes/juego.tscn")
			if (global.nivel_s ==2):
				get_tree().change_scene("res://scenes/juego2.tscn")
			if (global.nivel_s ==3):
				get_tree().change_scene("res://scenes/juego3.tscn")
			if (global.nivel_s ==4):
				get_tree().change_scene("res://scenes/juego4.tscn")
	if body.name == "character2jugadores_2":
		print ("personaje jugador 2 ha chocado")
		global.intentoj2 = global.intentoj2 +1
		global.vivoj2 = 1
	if body.name == "character2jugadores_1":
		print ("personaje jugador 1 ha chocado")
		global.intentoj1 = global.intentoj1 +1
		global.vivoj1 = 1
	pass # Replace with function body.
