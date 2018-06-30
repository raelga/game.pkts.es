DOCKER_IMAGE=raelga/game.pkts.es


usage:				## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


build:				## Build docker image copying the current html folder
	docker build -t $(DOCKER_IMAGE) .

run: build			## Run the webpage on 8080
	docker run --rm -p 8080:80 $(DOCKER_IMAGE)

dev: build			## Rub the webpage on 8080 mounting the html folder 
	docker run --rm -p 8080:80 -v $(PWD)/docs:/usr/share/nginx/html $(DOCKER_IMAGE)