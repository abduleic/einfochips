**DevOps Bootcamp**

Launch an Amazon Linux EC2 

Install Docker in EC2 Amazon Linux version 

sudo dnf update -y

sudo dnf -y install docker -y

sudo systemctl enble docker

sudo systemctl start docker

sudo usermod -aG docker ec2-user

exit and relogin to apply the command usermod -aG

Docker version 

Clone the image 

docker pull stacksimplfy/retail-store-sample-ui:latest

Run Container 

Docker run --name myapp1 -p 1122:8080 -d stacksimplfy/retail-store-sample-ui:latest

Docker ps -a 

Now take the public IP address and port test in browser 

<public-IP>:1122 	you should be able to see the page

<img width="1919" height="1005" alt="Screenshot 2026-05-04 154201" src="https://github.com/user-attachments/assets/823c0013-c011-447f-a246-c5ececd33cc2" />


Docker commands

Docker ps 					- list containers 

Docker exec -it myapp1 /bin/bash		- connect to container 

Docker stop 					- stop a running container

Docker start 					- start a stopped container

Docker ps -aq					- list all container IDs stopped/running

Docker rmi <image id>			- delete docker image

Docker prune system	- Removes everything unused (containers, images, networks, cache)



