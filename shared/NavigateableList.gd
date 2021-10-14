extends Control

signal item_pressed(item)

export var list_item : PackedScene

onready var list_container = $ScrollContainer/ListContainer

var items : Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func add_item(icon: Texture, title_text: String):
	var item = list_item.instance()
	item.icon_texture = icon
	item.title_text = title_text
	items.append(item)
	var index : int = items.size() - 1
	list_container.add_child(item)
	
	item.connect("pressed", self, "on_item_pressed", [index])

func on_item_pressed(index: int):
	emit_signal("item_pressed", index)
