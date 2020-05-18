extends Puzzle

export (bool) var solved
var doorPanel
var Checker = 0
var VoltageA = "8"
var CurrentA = "-2"

func _ready():
	doorPanel = get_parent()
	if doorPanel.puzzle_solved:
		solved = true
		$WarningLabel.visible = true
		$WarningLabel.text = "Already solved!"

func _checker():
	if Checker == 2:
		$WarningLabel.text = "Both are correct!"
		solved = true
		doorPanel.update_puzzle(solved)



func _on_VoltageA_text_entered(new_text):
	if $VoltageA.text == VoltageA:
		$WarningLabel.text = "Va is correct!" 
		Checker += 1
		_checker()
	else:
		$WarningLabel.text = "Va is wrong!" 

func _on_CurrentA_text_entered(new_text):
	if $CurrentA.text == CurrentA:
		$WarningLabel.text = "Ia is correct!" 
		Checker += 1
		_checker()
	else:
		$WarningLabel.text = "Ia is wrong!" 
