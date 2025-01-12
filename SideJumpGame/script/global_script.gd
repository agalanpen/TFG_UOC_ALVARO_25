extends Node
##variables globales
var vivoj1 = 0 #si esta vivo es 0 si muerto 1
var vivoj2 = 0 #si esta vivo es 0 si muerto 1
var ganador = 0# 0 gana juga 2 - 1 gana juga 1
var intentoj1=0
var intentoj2=0
var intento=0  #variable para saber los intentos que lleva el usuario
var time= 0 #variable para calcularel tiempo
var ingame=0#con esto sabemos si el usuario está o no en partida
var partida#el usuario ha marcado un jugador o 2 jugadores
var jugador=1
var sonido = 0 # 0 suena 1 suena
var nivel = 1
var nivel_s = 1 #El nivel que se a seleccionado
var tokens = 0
var tokens_g = 0#tokens en la partida
var character = 1 #el personaje que va a usarse
var p2=0 #si tiene comprado el personaje 2 es 1
var p3=0 #si tiene comprado el personaje 3 es 1
var cordx
var cordy
var pause = 0 #no está en pausa
var ruta = "user://d334ao.json"
var file = File.new()
var json
var n_game
var info = {
	"nivel":+nivel,
	"tokens":+tokens,
	"personaje":+character,
	"p2":+p2,
	"p3":+p3
	
}
var info_json = JSON.print(info)
# SCRIPT QUE SE EJECUTARA PARA GUARDAR LOS DATOS
func _ready():
	comprobar_datos() # comprueba si los datos existen o no
	pass



func comprobar_datos():
	print ("comprobando si existen datos")
	if(!file.file_exists(ruta)): ##comprueba si no existe
		print("no existen los datos creamos el fichero con los valores por defecto")
		save_data(file)
		load_data(file)
	else:
		print("existen datos, cargamos datos los datos")
		load_data(file)
		
	
	
func save_data(file):
		file.open(ruta, File.WRITE_READ) 
		file.store_string(info_json)
		file.close()

func guardar_partida(file):
	file.open(ruta, File.WRITE_READ) 
	print ("guardando partida")
	var info2 = {
	"nivel":+nivel,
	"tokens":+tokens,
	"personaje":+character,
	"p2":+p2,
	"p3":+p3
	}
	var info_json2 = JSON.print(info2)
	print (info)
	file.store_string(info_json2)
	file.close()
	
func load_data(file):
	print("cargando datos")
	file.open(ruta, File.READ)
	info = file.get_as_text()
	file.close()
	json = parse_json(str(info))
	print(json)
	print (info)
	nivel = json['nivel']
	tokens = json['tokens']
	character = json['personaje']
	p2 = json['p2']
	p3 = json['p3']
	print(json['tokens'])
	
