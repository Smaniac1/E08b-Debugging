tool
extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer
onready var end_scene = load("res://src/Levels/Screens/EndScreen.tscn")

export var next_scene: PackedScene
var i = 1
var levels = 2


func _on_body_entered(body: PhysicsBody2D):
	teleport()


func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if not next_scene else ""


func teleport() -> void:
	get_tree().paused = true
	anim_player.play("fade_out")
	yield(anim_player, "animation_finished")
	if i < levels:
		get_tree().paused = false
		get_tree().change_scene_to(next_scene)
	else:
		end_scene 
