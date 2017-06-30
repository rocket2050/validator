build-validator:
	docker build -t opstree/anisble_validator .

build-target:
	docker build -t  xentos . -f Dockerfile.target

run-target:
	docker rm -f target || true
	docker run -itd --name target xentos

run-validator:
	docker rm -f anisble_validator || true
	docker run -it --name anisble_validator -v /home/devops/validator:/validators --link target:target opstree/anisble_validator /bin/bash
