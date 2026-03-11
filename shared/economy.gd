extends Node

var mars_coins: int = 0
var red_dust: int = 0
const TRAIN_TICKET_COST = 10

func add_coins(amount: int):
	mars_coins += amount

func spend_coins(amount: int) -> bool:
	if mars_coins >= amount:
		mars_coins -= amount
		return true
	return false

func buy_train_ticket() -> bool:
	return spend_coins(TRAIN_TICKET_COST)
