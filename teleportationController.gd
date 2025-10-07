extends XRController3D
@export var teleport_button := "trigger"
func _process(_delta):
	if is_button_pressed(teleport_button):
		var raycast = $RayCast3D
		if raycast.is_colliding():
			print("test")
			var target_pos = raycast.get_collision_point()
			var origin = get_parent()
			origin.global_transform.origin = target_pos + Vector3.UP * 1.5
