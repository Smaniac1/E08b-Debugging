extends Control


onready var result: Label = $Result


func _ready() -> void:
	result.text = "Your final score is: " + str(PlayerData.score) + " and you died " + str(PlayerData.deaths) + " time(s)!"
