extends Puzzle

var Energy = false
var Charge = false

func _ready():
	$InstructionLabel2.visible = false

func _on_Voltage_text_entered(new_text):
	if new_text == "voltage" or new_text == "Voltage":
		$InstructionLabel2.visible = true

func _on_Energy_text_entered(new_text):
	if new_text == "energy" or new_text == "work":
		Energy = true

func _on_Charge_text_entered(new_text):
	if new_text == "charge" or new_text == "unit charge":
		Charge = true

func _on_Submit_pressed():
	if Charge == true and Energy == true:
		$WarningLabel.text = "You are Correct!"
	else:
		$WarningLabel.text = "Try Again!"
