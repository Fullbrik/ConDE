class_name CurrentTimeLabel extends Label

export var config_manager : NodePath

var _config_manager : LauncherConfigManager


# Called when the node enters the scene tree for the first time.
func _ready():
	if(config_manager):
		_config_manager = get_node(config_manager) as LauncherConfigManager


func _process(delta):
	if(_config_manager):
		var time := OS.get_time()
		#text = str(time)
		if(_config_manager.config.use_24hr_time):
			if(_config_manager.config.show_seconds):
				text = str(time.hour) + ":" + str(time.minute) + ":" + str(time.second)
			else:
				text = str(time.hour) + ":" + str(time.minute)
		else:
			if(_config_manager.config.show_seconds):
				if(time.hour > 12):
					text = str(time.hour - 12) + ":" + str(time.minute) + ":" + str(time.second)  + " PM"
				else:
					text = str(time.hour) + ":" + str(time.minute) + ":" + str(time.second) + " AM"
			else:
				if(time.hour > 12):
					text = str(time.hour - 12) + ":" + str(time.minute) + " PM"
				else:
					text = str(time.hour) + ":" + str(time.minute) + " AM"
