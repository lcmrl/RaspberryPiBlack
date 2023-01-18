#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <string>
#include <stdio.h>

//static pid_t pid = 0;

void Shoot(){
/*
            if((pid = fork()) == 0){
                std::cout << "inside" << std::endl;
                execl("/usr/bin/libcamera-still",
                      "-t", "9000",
                      "-o", "/home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/img%d.jpg",
                      "--timelapse", "1000",
                      "--width", "648",
                      "--height", "486",
                      NULL);
}
*/

    ////////////////////////////////////////////////////////popen("ls -l", "r");
    int i;
    i = system("ls");
    std::cout << "ok" << std::endl;
}

int main (void)
{

    Shoot();
    int j;
    j = system("/usr/bin/libcamera-still -t 9000 -o /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/img%d.jpg --timelapse 1000 --width 648 --height 486");
    std::cout << "ok" << std::endl;

    return 0;
}


