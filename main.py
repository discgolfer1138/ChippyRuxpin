#!/usr/bin/python
# apt-get install python-setuptools python-dev build-essential espeak alsa-utils
# apt-get install python-alsaaudio python-numpy python-twitter python-bottle mplayer

import sys
import time
import subprocess
import os

from random import randint
from threading import Thread

import RPi.GPIO as GPIO
from lib.servo import Servo

from lib.audioPlayer import AudioPlayer
from lib.webFramework import WebFramework

GPIO.cleanup()
GPIO.setmode(GPIO.BCM)

eyes = Servo(
  pwm_pin=18,
  dir_pin=24,
  cdir_pin=23,
  duration=.3,
  speed=100,
  label='eyes'
)

mouth = Servo(
  pwm_pin=17,
  dir_pin=22,
  cdir_pin=27,
  duration=.3,
  speed=100,
  label='mouth'
)

audio = None
isRunning = True

def updateMouth():
  lastMouthEvent = 0
  lastMouthEventTime = 0

  while( audio == None ):
    time.sleep( 0.1 )
    
  while isRunning:
    if( audio.mouthValue != lastMouthEvent ):
      lastMouthEvent = audio.mouthValue
      lastMouthEventTime = time.time()

      if( audio.mouthValue == 1 ):
        mouth.open()
      else:
        mouth.close()
    else:
      if( time.time() - lastMouthEventTime > 0.4 ):
        mouth.stop()

# A routine for blinking the eyes in a semi-random fashion.
def updateEyes():
  while isRunning:
    eyes.close()
    eyes.open()
    time.sleep( randint( 0,7) )
   
def talk(myText):
  os.system( "espeak \",...\" 2>/dev/null" ) # Sometimes the beginning of audio can get cut off. Insert silence.
  time.sleep( 0.5 )
  subprocess.call(["espeak", "-w", "speech.wav", myText, "-s", "130"])
  audio.play("speech.wav")
  return myText

mouthThread = Thread(target=updateMouth)
mouthThread.start()
eyesThread = Thread(target=updateEyes)
eyesThread.start()     
audio = AudioPlayer()

web = WebFramework(talk)
isRunning = False
GPIO.cleanup()
sys.exit(1)