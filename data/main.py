import eel
import os
import time

pacman = 'pacman.py'

eel.init("html")  
@eel.expose
def test():
	print("test")

def start_game(game):
	os.system("cd games && python3 " + game)

"""start_game(pacman)"""
eel.start("index.html")

