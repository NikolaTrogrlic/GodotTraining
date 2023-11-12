extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$TriggerArea.area_entered.connect(_play_animation)

	
func _play_animation(area):
	if(area.name == "Player"):
		$AnimationPlayer.play("Show")
		$TriggerArea.area_entered.disconnect(_play_animation)
