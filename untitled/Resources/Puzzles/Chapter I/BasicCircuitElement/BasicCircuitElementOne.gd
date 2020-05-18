extends CircuitElementPuzzle

export (bool) var solved
var doorPanel

func _ready():
	doorPanel = get_parent()
	if doorPanel.puzzle_solved:
		solved = true
		$WarningLabel.visible = true
		$WarningLabel.text = "Already solved!"


func _on_Arrow_pressed():
	$WarningLabel.text = "You are correct!"
	solved = true
	doorPanel.update_puzzle(solved)

func _on_Arrow2_pressed():
	$WarningLabel.text = "Try Again!"
