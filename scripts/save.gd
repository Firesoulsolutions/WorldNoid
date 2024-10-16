extends Node
#este es un script autoload
#constante para guardar los settings
const SAVEFILE="user://SAVEFILE.save"
#las modificaciones de las opciones se guarda en este dicionario
var game_data={}#se inicializa como dicionario vacio
func _ready():
	load_data()

func load_data():
	pass
	#abre un archivo
	#var save_file = file.new()
	
