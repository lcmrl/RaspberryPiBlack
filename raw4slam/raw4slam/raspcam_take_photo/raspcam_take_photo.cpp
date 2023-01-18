#include <raspcam_take_photo.h>
#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <string>

namespace raw4slam {

    namespace raspcam_take_photo {

        void Shoot(){
            int i = 0;
            i = system("/usr/bin/libcamera-still -e jpg -o test%d.jpg --width 648 --height 486"); // /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/img%d.jpg",
            }
        }
}

