#!/usr/bin/env pybricks-micropython
from pybricks.hubs import EV3Brick
from pybricks.ev3devices import (Motor, TouchSensor, ColorSensor,
                                 InfraredSensor, UltrasonicSensor, GyroSensor)
from pybricks.parameters import Port, Stop, Direction, Button, Color
from pybricks.tools import wait, StopWatch, DataLog
from pybricks.robotics import DriveBase
from pybricks.media.ev3dev import SoundFile, ImageFile


# This program requires LEGO EV3 MicroPython v2.0 or higher.
# Click "Open user guide" on the EV3 extension tab for more information.


# Create your objects here.
from ev3dev.ev3 import
from time import sleep

# conveyor
모터이름1 = MediumMortor('outA')

# ball counter
모터이름2 = MediumMortor('outB')
모터이름3 = MediumMortor('outC')
컬러센서4 

# crane, blizzard
모터이름5 = MediumMortor('outD')
모터이름6 = MediumMortor('out')

num=0

# conveyor
모터이름1.run timed(time sp=1000, speed sp=300, stop action='brake')

#ball counter
모터이름2.run timed(time sp=1000, speed sp=300, stop action='brake')
모터이름3.run timed(time sp=1000, speed sp=300, stop action='brake')
Color S = ColorSensor(Port.?)

if Color_S.color() == 1:
brick.sound.beep()
ev3.speaker.beep()

elif color_S.color() == 5:

    else



# crane, blizzard
모터이름5.run timed(time sp=1000, speed sp=300, stop action='brake')
모터이름6.run timed(time sp=1000, speed sp=300, stop action='brake')


ev3 = EV3Brick()


# Write your program here.
