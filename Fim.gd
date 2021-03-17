extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CenterContainer/VBoxContainer/Label.text = "Obrigado por jogar, pontuação final: " + str(Global.points)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Sair_pressed():
	get_tree().quit()
