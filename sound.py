from time import sleep
import pygame


def play_audio_file(file_path):
    pygame.mixer.init()
    pygame.mixer.music.load(file_path)
    pygame.mixer.music.play()


# Provide the path to your MP3 audio file
audio_file_path = "/var/tmp/gnome.mp3"

# Play the MP3 file using pygame
play_audio_file(audio_file_path)
