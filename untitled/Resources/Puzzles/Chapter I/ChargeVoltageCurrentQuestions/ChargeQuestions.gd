extends Puzzle

var Voltage = false
var Current = false

func _ready():
	$InstructionLabel2.visible = false

func _on_Bipolar_text_entered(new_text):
	if new_text == "bipolar" or new_text == "Bipolar":
		$InstructionLabel2.visible = true

func _on_Voltage_text_entered(new_text):
	if new_text == "voltage" or new_text == "current":
		Voltage = true

func _on_Current_text_entered(new_text):
	if new_text == "voltage" or new_text == "current":
		Current = true

func _on_Submit_pressed():
	if Voltage == true and Current == true:
		$WarningLabel.text = "You are Correct!"
	else:
		$WarningLabel.text = "Try Again!"
