extends Control

signal pressed

export var icon_texture : Texture
export var title_text : String

onready var icon_rect = $AspectRatioContainer/PaddingContainer/Icon
onready var title_label = $AspectRatioContainer/Panel/Title

func _ready():
	if(icon_texture):
		icon_rect.texture = icon_texture
	title_label.text = title_text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	emit_signal("pressed")
