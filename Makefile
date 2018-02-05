default: home

base:
	sh ./scripts/base.sh

workstation:
	sh ./scripts/docker.sh

home: base
	chmod +x ./bin/*
	./bin/hangyourhat
