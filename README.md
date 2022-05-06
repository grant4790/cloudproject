# cloudproject
Just a repo for my project
Default logins for guac
#     Username: guacadmin
#     Password: guacadmin


This is my ST:Cloud Computing project
I used IaaS to create an ubuntu VM,
I chose to use IaaS becasue I wanted to have full control of the platform I was working on.
From there I installed docker on to the VM
and installed the Apache Guacamole service on the docker VM.
This created four docker container on the VM, Guacamole, Guacd, Nginix, and Postgress,
A web server Guacamole, A deamon Guacd, A database Postgress, and a web service, to keep Guacmole secure NGINX.
I Bridged the four containers together to generate a webpage on port 8443.
This web page allows users to remote into almost any machine or container on a network using SSH, VNC, RDP, and more.
Users and Groups can be created to limit permisons and allow for a secure enviorment.
In the future I would like to off load the Postgress container to an SQL database directly in azure to help eliminate single
points of failure, I would also like to load balence the web server between two Ubuntu servers instead of a single one like I
have it now.

In order to meet the five pillars of well archietech framework I created the VM using very little reasouces to keep the cost
down, The whole enviorment is completely automated so if something fails in the future you can reliably recreate the enviorment
from here, The security of the enviorment is built into Guacamole, I can open port 8443 to the internet, however no one can get
in with out a Guacamole login, I also have SSH only allow traffic in from the source port 8443 and the public IP of the VM in
order to create a secure enviorment that only allows connections through Guacamole. 

To deploy this in azure the peervm.json file just need to be loaded into Azure and it will walk you through the rest, once the vm is created and deployed make your way to the website HTTPS://hostname:8443 replace hostname with your dns name or ip address The default login is listed above.
