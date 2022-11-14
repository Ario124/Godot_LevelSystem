extends Node2D


export (int) var level = 1

var experience = 0
var experience_total = 0
var experience_needed = get_experience_needed(level + 1)

func get_experience_needed(level):
	return round(pow(level, 1.8) + level * 5)

func gain_experience(amount):
	experience_total += amount
	experience += amount
	while experience >= experience_needed:
		experience -= experience_needed
		level_up()

func level_up():
	level += 1
	experience_needed = get_experience_needed(level + 1)
