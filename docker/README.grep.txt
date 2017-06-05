Make sure to set up the infrastructure and your favourite debuggers ahead of the study!
* Follow instructions on 'installation and setup' (and UI.readme.grep.txt if needed).
* Check whether your debugging tool or IDE works with our source code!
* Check whether the links to the questionnaires work (/root/Desktop/grep*/readme.txt).

______________________
INSTALLATION AND SETUP
* Install Docker: https://docs.docker.com/engine/installation/
* Unpack debugstudy.zip

* Run './run.sh grep’. This will
** download 1GB of Docker VM 
** install 14 buggy versions of grep, 
** start the Docker VM in command line terminal 
** Now, you are already connected to the terminal of the Docker VM (you will see root@...).
** You can always execute './run.sh grep’ again to re-connect.
** You have root privileges
_______________
TROUBLESHOOTING
* If you get "Error response from daemon: Conflict" run 'docker restart debugstudy0'
* If you installed Docker on an Ubuntu Host and cannot set breakpoints,
** Copy sources and binaries to the HOST machine:
mkdir source
for i in $(seq 1 14); do docker cp debugstudy0:/root/Desktop/grep$i source; done 
* If you have other images running when switching between subjects, execute "docker images" to
obtain the ids of all images, find which "debugstudy" or "debug/grep" images that may need 
to be removed.
_________
DEBUGGING
* Find buggy binary in /root/Desktop/grep*/grep/src/grep
* Find buggy source in /root/Desktop/grep*/grep/src/*.c
* Find link to questionaire and instructions in /root/Desktop/grep*/readme.txt
* EACH ERROR HAS ITS OWN LINK!
* Solve at least 11 of 14 bugs.

* Write down the time, you spend debugging each error! 
* If you can't figure it out, you can pause for this error, go to another one, and resume later.
* We suggest to use the debugger to step through the buggy execution and understand the source code.
* We suggest to fix the segmentation faults first

________________
CHANGING SUBJECT
* Only when you are clearly finished with grep you can switch to find. All data in the Docker container will be lost.
* Exit the container, stop and delete the container, delete the grep-image and install the find-image:
exit
docker stop debugstudy0
docker rm debugstudy0
docker rmi debugstudy
docker rmi debug/grep
./run.sh find
