.PHONY: build deploy pull

build:
	docker build --network=host --rm -t torch:stable .

run:
	docker run -it -p 8888:8888 -v $(shell pwd):/workdir/projects torch:stable jupyter notebook --ip=0.0.0.0 --allow-root

interactive:
	docker run \
	--cap-add SYS_ADMIN \
	--gpus all \
	-it torch:stable \
	/bin/bash

#deploy:
#		docker push xxx

#pull:
#		docker pull xxx
