extends CanvasLayer

@export var game_state: GameStateResource
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_state.money += game_state.income * delta
	print(game_state.money)
