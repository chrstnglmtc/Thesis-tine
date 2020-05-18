extends Puzzle

var Res1Nodes = []
var Res2Nodes = []

func _ready():
	pass

func _on_Resistor1_area_entered(area):
	if area is CircuitNode:
		Res1Nodes.push_back(area.get_name())
func _on_Resistor1_area_exited(area):
	if area is CircuitNode:
		Res1Nodes.erase(area.get_name())
func _on_Resistor2_area_entered(area):
	if area is CircuitNode:
		Res2Nodes.push_back(area.get_name())
func _on_Resistor2_area_exited(area):
	if area is CircuitNode:
		Res2Nodes.erase(area.get_name())



func _on_Submit_pressed():
	if Res1Nodes.has("CircuitNode") and Res2Nodes.has("CircuitNode"):
		$Wire1.add_point(Vector2(91.38, 54.575))
		$Wire1.add_point(Vector2(91.38, 104.41))
		$Wire2.add_point(Vector2(42.144, 104.41))
		$Wire2.add_point(Vector2(91.38, 104.41))
		$WarningLabel.text = "You are Correct!"
	elif Res1Nodes.has("CircuitNode2") and Res2Nodes.has("CircuitNode2"):
		$Wire1.add_point(Vector2(42.144, 54.575))
		$Wire1.add_point(Vector2(42.144, 104.41))
		$Wire2.add_point(Vector2(42.144, 104.41))
		$Wire2.add_point(Vector2(91.38, 104.41))
		$WarningLabel.text = "You are Correct!"
	elif Res1Nodes.has("CircuitNode3") and Res2Nodes.has("CircuitNode3"):
		$Wire1.add_point(Vector2(42.144, 54.575))
		$Wire1.add_point(Vector2(91.38, 54.575))
		$Wire2.add_point(Vector2(91.38, 54.575))
		$Wire2.add_point(Vector2(91.38, 104.41))
		$WarningLabel.text = "You are Correct!"
	elif Res1Nodes.has("CircuitNode4") and Res2Nodes.has("CircuitNode4"):
		$Wire1.add_point(Vector2(42.144, 54.575))
		$Wire1.add_point(Vector2(91.38, 54.575))
		$Wire2.add_point(Vector2(42.144, 54.575))
		$Wire2.add_point(Vector2(42.144, 104.41))
		$WarningLabel.text = "You are Correct!"
	else:
		$WarningLabel.text = "Try Again!"
