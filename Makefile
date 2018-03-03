default: home

base:
	sudo apt-get -y update
	sudo apt-get -y upgrade
	sh ./scripts/base.sh

workstation:
	sh ./scripts/gui.sh
	sh ./scripts/docker.sh

rosrun:
	docker run -it --rm -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=roadrunner ct2034/vnc-ros-kinetic-full


nvidia:
	sh ./scripts/nvidia.sh

home: base
	chmod +x ./bin/*
	./bin/hangyourhat
