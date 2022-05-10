# cloudproject
Just a repo for my project
Default logins for guac
#     Username: guacadmin
#     Password: guacadmin


# Description


This is my ST: Cloud Computing project
I used IaaS to create an ubuntu VM,
I chose to use IaaS because I wanted to have full control of the platform I was working on.
From there I installed docker on to the VM
and installed the Apache Guacamole service on the docker VM.
This created four docker containers on the VM, Guacamole, Guacd, Nginix, and Postgress,
A web server Guacamole, A deamon Guacd, A database Postgress, and a web service, to keep Guacmole secure NGINX.
I Bridged the four containers together to generate a webpage on port 8443.
This web page allows users to remote into almost any machine or container on a network using SSH, VNC, RDP, and more.
Users and Groups can be created to limit permissions and allow for a secure environment.
In the future I would like to off load the Postgress container to an SQL database directly in azure to help eliminate single
points of failure, I would also like to load balance the web server between two Ubuntu servers instead of a single one like I
have it now.

# Well-Architected Framework Pillars

In order to meet The Five Pillars of Well Architect Framework I created the VM using very little resources to keep the cost
down and to meet Cost Optimization Pillar by only using what I need. The whole environment is completely automated so if 
something fails in the future you can reliably recreate the environment from here meeting the Reliability Pillar to recover 
from disaster. The Security Pillar of the environment is built into Guacamole, I can open port 8443 to the internet, however
no one can get in without a Guacamole login, I also have SSH open however that requires a log in to access as well.
in order to create a secure environment that only allows connections through Guacamole. With setup being 
automated it does reach Operational Excellence Pillar by limiting human error The deployment is also complete layed out with 
in this Read,md file to keep the deployment predictable. I do not meet Performance efficiency Pillar in its 
current state as I have one IaaS Environment running all my services, once I include a load balancer and a second server to 
optimize usage and off load  the data base Performance Efficiency Pillar will be met.

# Intructions

-To deploy this in azure take the peervm.json file 
-The file needs to be loaded into Azure
-it will take you to the vm creation screen 
-make an admin user
-make an admin password
-select a reasource group to store the VM
-select create
-select create again
-watch it deploy
-go to https://hostname:8443 replace hostname with your public IP
-log in with the login above
-CREATE A NEW ADMIN USER, anyone can use your ip and that log in to get into your VM
-log in with new admin user
-DELETE DEFAULT LOGIN
-add connections to guacamole
