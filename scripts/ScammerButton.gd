extends CanvasLayer

@export var scammer_data: ScammerResource
@export var game_state: GameStateResource
# Called when the node enters the scene tree for the first time.
func _ready():
	set_display()
	game_state.income += scammer_data.income * scammer_data.count

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$BuyButton.disabled = game_state.money < scammer_data.price

func _on_buy_button_pressed():
	game_state.money -= scammer_data.price
	scammer_data.price += scammer_data.price_exponent
	scammer_data.count +=1
	game_state.income += scammer_data.income * scammer_data.count
	print(game_state.income)
	set_display()

func set_display():
	$BuyButton.set_text( "Buy " + scammer_data.scammer_name)
	$Count.set_text( "Count: " + str(scammer_data.count))
	$Price.set_text("Price: " + str(scammer_data.price))
	$Income.set_text("Income: " + str(scammer_data.income) + " Per Second")
