extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if (global.nivel < 2):
		$n2.visible=false
		$n2_b.visible=true
	if (global.nivel < 3):
		$n3.visible=false
		$n2_b.visible=true
	if (global.nivel < 4):
		$n4.visible=false
		$n2_b.visible=true
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
	get_tree().change_scene("res://scenes/juego2.tscn")
	pass # Replace with function body.


func _on_tienda_pressed():
	pass # Replace with function body.


func _on_salir_pressed():
	pass # Replace with function body.


func _on_n1_pressed():
	get_tree().change_scene("res://scenes/juego.tscn")
	global.nivel_s = 1
	print ("seleccionado el nivel" )
	print (global.nivel_s)
	pass # Replace with function body.


func _on_n2_pressed():
	get_tree().change_scene("res://scenes/juego2.tscn")
	print ("seleccionado el nivel" )
	print (global.nivel_s)
	global.nivel_s = 2
	pass # Replace with function body.


func _on_n3_pressed():
	get_tree().change_scene("res://scenes/juego3.tscn")
	print ("seleccionado el nivel" )
	print (global.nivel_s)
	global.nivel_s = 3
	pass # Replace with function body.


func _on_n4_pressed():
	get_tree().change_scene("res://scenes/juego4.tscn")
	print ("seleccionado el nivel" )
	print (global.nivel_s)
	global.nivel_s = 4
	pass # Replace with function body.
