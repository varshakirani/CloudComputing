# CloudComputing
Assignment 3 from TU Berlin

-> do not delete stack
-> Use id_rsa and id_rsa.pub key pair to connect via ssh to the frontend server.
-> $ ssh -i ~/.ssh/id_rsa.pub ubuntu@10.200.1.196
-> start ssh-agent in frontend to store private key for ssh connection to backened
 eval "$(ssh-agent -s)"
 ssh-add ~/.ssh/id_rsa
-> to copy Frontend and Backend folders onto frontend server
	->$ scp -r Frontend ubuntu@10.200.2.77:~
	->$ scp -r Backend ubuntu@10.200.2.77:~
-> To list all containers
	->$ sudo docker ps -a -q
-> To list all images
	->$ sudo docker images -q
-> To stop conatiners
	->$ sudo docker stop <CONTAINER ID>
-> to remove all containers
	->$sudo docker rm $(sudo docker ps -a -q)
->to remove all images
	->$sudo docker rmi $(sudo docker images -q)
->to remove all volumes
	->$sudo docker volume ls -qf dangling=true | xargs -r sudo docker volume rm

->to build image
	->$ sudo docker build -t varshakirani/frontend --no-cache=true .
	->$ sudo docker build -t varshakirani/backend --no-cache=true .
->to run the image
	->$ sudo docker run --env CC_BACKEND_SERVERS="192.168.0.4 192.168.0.3" -d frontend

->to check conatiner 
	->$ sudo docker exec -t -i mycontainer /bin/bash

->Pushing to docker hub (change varshakirani to respective docker id user)
	->$ sudo docker login
	->$ sudo docker tag frontend varshakirani/frontend
	->$ sudo docker push varshakirani/frontend
	->$ sudo docker logout

->To run docker with environment
	->$ sudo docker run --env CC_BACKEND_SERVERS="192.168.0.4 192.168.0.3" -d varshakirani/front




