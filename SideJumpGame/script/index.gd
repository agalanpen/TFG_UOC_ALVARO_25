extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$c_token.text = str(global.tokens) #cargamos los tokens del nili
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_play_pressed():
	global.intento=0 ##restablecemos los intentos
	global.tokens_g=0
	get_tree().change_scene("res://scenes/index_jugador.tscn")
	
	pass # Replace with function body.


func _on_play2_pressed():
	get_tree().change_scene("res://scenes/2_jugadores.tscn")
	pass # Replace with function body.


func _on_tienda_pressed():
	get_tree().change_scene("res://scenes/shop.tscn")
	pass # Replace with function body.


func _on_salir_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_n1_pressed():
	get_tree().change_scene("res://scenes/juego.tscn")
	pass # Replace with function body.
