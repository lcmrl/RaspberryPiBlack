#/usr/bin/python3 ./loop.py

# Ref for python socket:
# https://stackoverflow.com/questions/2719017/how-to-set-timeout-on-pythons-socket-recv-method

# Ref for exif:
# https://gist.github.com/c060604/8a51f8999be12fc2be498e9ca56adc72
# https://www.cipa.jp/std/documents/e/DC-X008-Translation-2019-E.pdf
# https://github.com/hMatoba/Piexif/blob/3422fbe7a12c3ebcc90532d8e1f4e3be32ece80c/piexif/_exif.py

import time
import socket
import piexif
from picamera2 import Picamera2, Preview
from fractions import Fraction


OUT_IMG_FOLDER = "./photos"
FRAME_RATE = 1/5
MAX_N_ITERATION = 30
MSG_LENGTH = 250
SERVER = "192.168.43.80"
PORT = 61111
FORMAT = 'utf-8'


### FUNCTIONS
def change_to_rational(number):
    """convert a number to rantional
    Keyword arguments: number
    return: tuple like (1, 2), (numerator, denominator)
    """
    f = Fraction(str(number))
    return (f.numerator, f.denominator)


def AddExifGPS(file_name, lat, lng, alt, year, hour, hour_float_sec, quality):
    exiv_lat = (change_to_rational(lat[0]), change_to_rational(lat[1]), change_to_rational(lat[2]))
    exiv_lng = (change_to_rational(lng[0]), change_to_rational(lng[1]), change_to_rational(lng[2]))
    exiv_hour = (change_to_rational(hour_float_sec[0]), change_to_rational(hour_float_sec[1]), change_to_rational(hour_float_sec[2]))
    gps_ifd = {
        piexif.GPSIFD.GPSVersionID: (2, 0, 0, 0),
        piexif.GPSIFD.GPSAltitudeRef: 0,
        piexif.GPSIFD.GPSAltitude: change_to_rational(alt), #change_to_rational(round(alt))
        piexif.GPSIFD.GPSLatitudeRef: lat[3],
        piexif.GPSIFD.GPSLatitude: exiv_lat,
        piexif.GPSIFD.GPSLongitudeRef: lng[3],
        piexif.GPSIFD.GPSLongitude: exiv_lng,
        piexif.GPSIFD.GPSDateStamp: f"{year} {hour}",
        piexif.GPSIFD.GPSTimeStamp: exiv_hour,
        piexif.GPSIFD.GPSStatus: quality
    }
    gps_exif = {"GPS": gps_ifd}
    exif_data = piexif.load(file_name)
    exif_data.update(gps_exif)
    exif_bytes = piexif.dump(exif_data)
    piexif.insert(exif_bytes, file_name)

### MAIN STARTS HERE

# GNSS initialization
print("Client listening")
print("server IPv4: {}".format(SERVER))
ADDR = (SERVER, PORT)
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(ADDR)
client.settimeout(FRAME_RATE)

# Camera initialization
picam2 = Picamera2()
preview_config = picam2.create_preview_configuration(main={"size": (800, 600)})
picam2.configure(preview_config)
picam2.start()

# Main frame
for i in range (0, MAX_N_ITERATION):
    start = time.time()

    try:
        msg = client.recv(MSG_LENGTH).decode(FORMAT)
        time_rec_msg = time.time()
        metadata = picam2.capture_file(f"{OUT_IMG_FOLDER}/test{i}.jpg")
        time_shooted_img = time.time()
        #print(f"{msg}")
        msg_elements = msg.split(" ")
        message = []

        for k in range(len(msg_elements)):
            if msg_elements[k] != '':
                message.append(msg_elements[k])

        year = message[0]
        hour = message[1]
        N = (int(message[2]), int(message[3]), float(message[4]), 'N')
        E = (int(message[5]), int(message[6]), float(message[7]), 'E')
        H = float(message[8])
        quality_solution = message[9] #int(message[9])

        y1, y2, y3 = year.split('/')
        h1, h2, h3 = hour.split(':')
        hour_float_sec = (int(h1), int(h2), float(h3))
        year = f"{y1}:{y2}:{y3}"
        h3 = round(float(h3))
        hour = f"{h1}:{h2}:{h3}"

        print("S/Fl/Fix", quality_solution, ":", year, hour, N, E, H)
        print("delay gnss-camera: ", time_shooted_img-time_rec_msg, "s")

        print(f"{OUT_IMG_FOLDER}/test{i}.jpg")
        exif_data = piexif.load(f"{OUT_IMG_FOLDER}/test{i}.jpg") #, key_is_name=False)
        #print(exif_data)
        AddExifGPS(f"{OUT_IMG_FOLDER}/test{i}.jpg", N, E, H, year, hour, hour_float_sec, quality_solution)
        exif_data = piexif.load(f"{OUT_IMG_FOLDER}/test{i}.jpg") #, key_is_name=False)
        #print(exif_data)

    except:
        metadata = picam2.capture_file(f"{OUT_IMG_FOLDER}/test{i}.jpg")
        print("shoot")

    end = time.time()
    print("Total time iteration:", end-start, "s")

picam2.close()
print('picam2.close()')

