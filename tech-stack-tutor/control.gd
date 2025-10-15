extends Node2D

@onready var InputField: LineEdit = $"LineEdit"
@onready var label: Label = $Label


func _ready():
	InputField.text_submitted.connect(self._on_LineEdit_text_entered)
	
func _on_LineEdit_text_entered(newText: String) -> void:
	label.text = "You Entered: "+newText+" \n also Hello Capstone!"
