extends Control

onready var list = $NavigateableList

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var icon := preload("res://shared/icons/NoIcon.png") as Texture
	#list.add_item(icon, "Settings")
	#list.add_item(icon, "Files")
	
	for i in range(10):
		list.add_item(icon, str(i))

func _on_NavigateableList_item_pressed(item):
	print_debug(item)
