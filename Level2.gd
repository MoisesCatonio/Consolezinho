extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Player/Camera2D/Control/Label.text = "Pontuação " + str(Global.points)


func _on_pit_body_entered(body):
	if(body == $Player):
		get_tree().change_scene("res://Level2.tscn")


func _on_Spikes_body_entered(body):
	if(body == $Player):
		get_tree().change_scene("res://Level2.tscn")


func _on_Cristals_body_entered(body):
	if(body == $Player):
		Global.points += 10
		remove_child($Cristals)


func _on_Cristals2_body_entered(body):
	if(body == $Player):
		Global.points += 10
		remove_child($Cristals2)


func _on_Cristals3_body_entered(body):
	if(body == $Player):
		Global.points += 10
		remove_child($Cristals3)


func _on_Cristals4_body_entered(body):
	if(body == $Player):
		Global.points += 10
		remove_child($Cristals4)


func _on_portal_body_entered(body):
	if(body == $Player):
		get_tree().change_scene("res://Fim.tscn")
