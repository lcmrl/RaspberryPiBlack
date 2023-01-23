#!/usr/bin/python3

# Capture a JPEG while still running in the preview mode. When you
# capture to a file, the return value is the metadata for that image.

import time
import socket
from picamera2 import Picamera2, Preview


FRAME_RATE = 1/10
MSG_LENGTH = 250
SERVER = "192.168.43.80"
PORT = 61111
FORMAT = 'utf-8'


### MAIN STARTS HERE

print("Client listening")
print("SERVER IPv4: {}".format(SERVER))
ADDR = (SERVER, PORT)
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(ADDR)

for i in range (0, 10):
    start = time.time()
    msg = client.recv(MSG_LENGTH).decode(FORMAT)
    end = time.time()
    print(f"{msg}")
    print("Elapsed time:", end-start)
    msg_elements = msg.split(" ")
    message = []

    for i in range(len(msg_elements)):
        if msg_elements[i] != '':
            message.append(msg_elements[i])

    year = message[0]
    hour = message[1]
    N = (int(message[2]), int(message[3]), float(message[4]))
    E = (int(message[5]), int(message[6]), float(message[7]))
    H = float(message[8])
    print(year, hour, N, E, H)
    print(message)
    quit()
    #time.sleep(FRAME_RATE)

print('ok')
quit()














picam2 = Picamera2()

preview_config = picam2.create_preview_configuration(main={"size": (800, 600)})
picam2.configure(preview_config)

#picam2.start_preview(Preview.QTGL)

picam2.start()
time.sleep(2)

metadata = picam2.capture_file("test.jpg")
print(metadata)





for i in range (0,10):
#    start = time.time()
#    print("Pronti")
#    metadata = picam2.capture_file(f"test{i}.jpg")
#    end = time.time()
#    print("Elapsed time: ", end-start, "seconds")
    time.sleep(FRAME_RATE)
    print("ok")




picam2.close()
