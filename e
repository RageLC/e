import time
import board
import pwmio
from adafruit_motor import servo

pwm = pwmio.PWMOut(board.GP12, duty_cycle=2 ** 15, frequency=50)
my_servo = servo.Servo(pwm)
angle = 90

while 1:
    my_servo.angle = angle
    time.sleep(.5)
    my_servo.angle = angle +90
    time.sleep(.5)
