# CloudComputing
Assignment 3 from TU Berlin

-> do not delete stack
-> Use id_rsa and id_rsa.pub key pair to connect via ssh to the frontend server.
-> $ ssh -i ~/.ssh/id_rsa.pub ubuntu@10.200.1.196
-> start ssh-agent in frontend to store private key for ssh connection to backened
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
-> to copy Frontend and Backend folders onto frontend server
	->$ scp -r Frontend ubuntu@10.200.1.196:~
	->$ scp -r Backend ubuntu@10.200.1.196:~
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
	->$ sudo docker build -t frontend .
->to run the image
	->$ sudo docker run -d frontend

->to check conatiner 
	->$ sudo docker exec -t -i mycontainer /bin/bash

->Pushing to docker hub (change varshakirani to respective docker id user)
	->$ sudo docker login
	->$ sudo docker tag frontend varshakirani/frontend
	->$ sudo docker push varshakirani/frontend
	->$ sudo docker logout




