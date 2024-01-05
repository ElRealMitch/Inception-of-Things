






all:


clean_cluster:
	sudo k3d cluster stop IoT
	sudo k3d cluster delete IoT
clean_docker:
	sudo docker rmi $(sudo docker image ls -aq)
	sudo docker rm $(sudo docker volume ls -a)