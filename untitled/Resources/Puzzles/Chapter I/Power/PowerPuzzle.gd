extends Puzzle

export (bool) var solved
var doorPanel

func _ready():
	doorPanel = get_parent()
	if doorPanel.puzzle_solved:
		solved = true
		$WarningLabel.visible = true
		$WarningLabel.text = "Already solved!"

func _on_LineEdit_text_entered(new_text):
	if $LineEdit.text == "1440":
		$WarningLabel.text = "You are correct!"
		solved = true
		doorPanel.update_puzzle(solved)
	elif $LineEdit.text == "1440W":
		$WarningLabel.text = "You are correct!"
		solved = true
		doorPanel.update_puzzle(solved)
	elif $LineEdit.text == "1.44KW":
		$WarningLabel.text = "You are correct!"
		solved = true
		doorPanel.update_puzzle(solved)
	else:
		$WarningLabel.text = "Try Again!"
