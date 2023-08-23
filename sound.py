import sounddevice as sd
import soundfile as sf

import random
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
sound_file = os.path.join(script_dir, 'gnome.mp3')

weights = [0.7, 0.2, 0.1]
num = random.choices([1, 2, 3], weights=weights, k=1)[0]

data, fs = sf.read(sound_file)
for i in range(num):
    sd.play(data, fs)
    sd.wait()
