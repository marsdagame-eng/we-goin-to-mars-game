extends Node

signal travel_requested(destination: String)

const PARISHES = ["parish_1","parish_2","parish_3","parish_4","parish_5","parish_6","mountain"]

func travel_to(parish: String):
	if parish in PARISHES:
		emit_signal("travel_requested", parish)
