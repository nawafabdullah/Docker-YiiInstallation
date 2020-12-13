prepare:
	docker build -t nawaf-yii-instalation .
	docker run --name web-container -d nawaf-Yii-instalation
	
connect:
	echo "Connecting to Server..."
	docker exec -it web-container /bin/bash

stop:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)

destroy:
	docker image rm -f $$(docker images -a -q)