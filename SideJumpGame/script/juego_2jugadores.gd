extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var objeto
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (global.vivoj1 ==1):
		print("esta muerto respawn")
		$personaje/character2jugadores_1.position = Vector2(104,92)
		global.vivoj1 = 0
	pass





func _on_tt_pressed():
	global.pause = 1
	global.cordx = 28
	global.cordy = 600
	pass # Replace with function body.


func _on_TouchScreenButton_pressed():
	print("posicion")
	$character/character.position = Vector2(104,92)
	pass # Replace with function body.
