run-app-node:
	npm install ./hello-world-nodejs/package.json && npm start

run-docker-app-node: build-docker-app-node
	docker run --rm -it -d -p 3000:3000 bootcamp-node:latest
	echo "Your docker image bootcamp-node:latest is running"

build-docker-app-node:
	cd hello-world-nodejs/ && docker build -t bootcamp-node:latest .

run-docker-app-golang: build-docker-app-golang
	docker run --rm -it -d -p 3002:3002 bottcamp-go:latest
	echo "Your docker image bottcamp-go:latest is running"

build-docker-app-golang:
	cd hello-world-golang/ && docker build -t bottcamp-go:latest .

run-docker-app-nginx: build-docker-app-nginx
	docker run --rm -it -d -p 80:80 bootcamp-nginx:latest
	echo "Your docker image bootcamp-nginx:latest is running"

build-docker-app-nginx:
	cd hello-world-nginx/ && docker build -t bootcamp-nginx:latest .

run-all-apps:
	cd hello-world-nginx/ && docker-compose up 
	echo "All apps is running with docker-compose"


	
