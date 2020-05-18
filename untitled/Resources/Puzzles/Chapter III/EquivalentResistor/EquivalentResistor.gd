extends Puzzle

export (bool) var solved
var doorPanel
var checker = 0

func _ready():
	doorPanel = get_parent()
	if doorPanel.puzzle_solved:
		solved = true
		$WarningLabel.visible = true
		$WarningLabel.text = "Already solved!"

func _on_Series_text_entered(new_text):
	if new_text == "R1" or new_text == "R2":
		checker += 1

func _on_Parallel_text_entered(new_text):
	if new_text == "R3" or new_text == "R4":
		checker += 1


func _on_Submit_pressed():
	if checker == 4:
		$WarningLabel.text = "Correct"
		solved = true
		doorPanel.update_puzzle(solved)
	else:
		$WarningLabel.text = "Try Again!"
