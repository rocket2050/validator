build-validator:
	docker build -t opstree/anisble_validator .

run-target:
	docker rm -f target || true
	docker run -itd --name target ubuntu:16.04

run-validator:
	docker rm -f anisble_validator || true
	docker run -it --name anisble_validator -v ${PWD}:/validators --link target:target opstree/anisble_validator /bin/bash
