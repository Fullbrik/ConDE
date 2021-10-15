class_name LauncherConfigManager extends Node
export var default_config : Resource

const CONFIG_PATH := "user://launcher.tres"

var config : LauncherConfig


# Called when the node enters the scene tree for the first time.
func _ready():
	load_config()
	
func load_config():
	print_debug("Laoding config...")
	
	config = load(CONFIG_PATH) as LauncherConfig
	
	if(!config || true):
		print_debug("Failed to load config. Loading + saving default")
		config = default_config as LauncherConfig
		save_config()

func save_config():
	print_debug("Saveing config...")
	
	var file := File.new()
	file.open(CONFIG_PATH, File.WRITE)
	file.close()
	
	var error := ResourceSaver.save(CONFIG_PATH, config)
	print_debug("Saved \"", CONFIG_PATH, "\" exited with: ", error)
