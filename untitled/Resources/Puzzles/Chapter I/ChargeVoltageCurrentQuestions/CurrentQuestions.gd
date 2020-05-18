extends Puzzle

var Charge = false
var Time = false

func _ready():
	$InstructionLabel2.visible = false


func _on_Current_text_entered(new_text):
	if new_text == "current" or new_text == "Current":
		$InstructionLabel2.visible = true


func _on_Charge_text_entered(new_text):
	if new_text == "Charge" or new_text == "charge":
		Charge = true


func _on_Time_text_entered(new_text):
	if new_text == "time" or new_text == "Time":
		Time = true


func _on_Submit_pressed():
	if Time == true and Charge == true:
		$WarningLabel.text = "You are Correct!"
	else:
		$WarningLabel.text = "Try Again!"
