default: home

base:
	sudo apt-get update
	sudo apt-get upgrade
	sh ./scripts/base.sh

workstation:
	sh ./scripts/gui.sh
	sh ./scripts/docker.sh

nvidia:
	sh ./scripts/nvidia.sh

home: base
	chmod +x ./bin/*
	./bin/hangyourhat
