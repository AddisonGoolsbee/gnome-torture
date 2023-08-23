import sounddevice as sd
import soundfile as sf

sound_file = "gnome.mp3"

data, fs = sf.read(sound_file)
sd.play(data, fs)
sd.wait()

# remember to redirect to /dev/null
