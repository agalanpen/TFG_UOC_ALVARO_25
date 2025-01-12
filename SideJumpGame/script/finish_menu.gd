extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$n_intentos.text = str(global.intento)
	if(global.jugador ==2):
		if(global.ganador == 0):
			$ganador.text = "HA GANADO EL JUGADOR 2"
		else:
			$ganador.text = "HA GANADO EL JUGADOR 1"
	#guardamos la partida
	global.tokens = int(global.tokens + global.tokens_g)

	if (global.jugador ==1): #guardamos el nivel o subimos dependiendo del nivel
		if (global.nivel <= global.n_game):
			global.nivel = global.n_game +1
			print("subimos un nv")
		global.guardar_partida(global.file)
	pass # Replace with function body.
	if (global.nivel_s >= global.nivel):
		global.nivel = global.nivel_s + 1
		global.guardar_partida(global.file)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
