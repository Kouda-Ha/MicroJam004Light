extends Spatial

onready var player = $GridMap/Player
onready var collectable_cube = $GridMap/BorgContainer

var borg_points_got = 0
var total_borg_count = 0

func _ready():
	total_borg_count = collectable_cube.get_child_count()
	
	player.connect("join_borg", self, "on_borg_join")
	
func on_borg_join():
	borg_points_got += 1
	if total_borg_count >= total_borg_count:
		print("Resistance is futile! Welcome Borg fren!!!!!")
