from time import sleep
from mpg123 import Mpg123, Out123

mp3 = Mpg123("/home/addisongoolsbee/Desktop/gnome-torture/gnome")
out = Out123()

for frame in mp3.iter_frames(out.start):
    out.play(frame)