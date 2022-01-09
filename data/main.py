import eel
import os
import time


eel.init("html")  
@eel.expose
def test():
	print("test")

@eel.expose
def start_game(type, game):
	if type == "py":
		os.system("cd games && python3 " + game)
	if type == "cmd":
		os.system(game)

#start_game("game", "py")

eel.start("index.html")

