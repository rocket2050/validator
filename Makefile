build-validator:
	docker build -t opstree/anisble_validator .

build-target:
	docker build -t opstree/target . -f Dockerfile.target

run-target:
	docker rm -f target || true
	docker run -itd --name target opstree/target

run-validator:
	docker rm -f anisble_validator || true
	docker run -it --name anisble_validator -v ${PWD}:/validators --link target:target opstree/anisble_validator /bin/bash
