extends Puzzle

var Counter = 0 

func _ready():
	pass



func _on_NodalButton_pressed():
	if Counter == 0:
		$InstructionLabel.text = "If Mesh requires less equations than Nodal."
		$WarningLabel.text = ""
		Counter += 1
	elif Counter == 3:
		$WarningLabel.text = "You Are Correct!"
		Counter += 1
	else:
		$WarningLabel.text = "Try Again!"
func _on_MeshButton_pressed():
	if Counter == 1:
		$InstructionLabel.text = "If Circuit contains Supernodes."
		$WarningLabel.text = ""
		Counter += 1
	elif Counter == 2:
		$InstructionLabel.text = "If Circuit contains Supermeshes."
		$WarningLabel.text = ""
		Counter += 1
	else:
		$WarningLabel.text = "Try Again!"
