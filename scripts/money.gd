extends Label

@export var game_state: GameStateResource

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("MONER: " + str(game_state.money))
