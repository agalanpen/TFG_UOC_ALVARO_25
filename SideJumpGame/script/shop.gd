extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("estamos en shop")
	print(global.p2)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (global.character ==1):# esta equipado el personaje1
		$equipar_1.visible = false
		$equipado_1.visible = true
	else:
		$equipar_1.visible = true
		$equipado_1.visible = false
	if (global.p2 == 0): #no tiene el personaje
		$equipar_2.visible = false
		$equipado_2.visible = false
	else:
		$comprar_2.visible = false
		if (global.character == 2): # se ha equipado el personaje 2
			$equipar_2.visible = false
			$equipado_2.visible = true
		else: #no está equipado
			$equipar_2.visible = true
			$equipado_2.visible = false
	if (global.tokens < 19):
		$comprar_2.visible = false 
		$comprarb_2.visible = true
		if(global.p2 == 0):
			$adquirido_2.visible = false

	$tokens.text = str(global.tokens)
	pass


func _on_comprar_2_pressed():
	print ("se compra el personaje 2")
	if (global.tokens > 19):
		print("se puede comprar")
		global.p2 = 1
		global.tokens = global.tokens - 20
		global.guardar_partida(global.file)
	else:
		print ("error tienes menos tokens que lo pedido")
	pass # Replace with function body.


func _on_equipar_2_pressed(): #boton equipar 2
	print ("se ha puslado equipar 2")
	$sonido_e.playing = true
	global.character = 2
	global.guardar_partida(global.file)
	pass # Replace with function body.


func _on_equipar_1_pressed():
	print ("se ha pulsado equipar 1")
	$sonido_e.playing = true
	global.character = 1
	global.guardar_partida(global.file)
	pass # Replace with function body.
