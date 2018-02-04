base:
	sh ./scripts/base.sh
	sh ./scripts/docker.sh

home: base
	chmod +x ./bin/*
	./bin/hangyourhat
