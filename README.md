# cloudproject
Just a repo for my project
Default logins for guac
#     Username: guacadmin
#     Password: guacadmin


This is my ST:Cloud Computing project
I used IaaS to create an ubuntu VM
from there I installed docker on to the VM
and installed the Apache Guacamole service on the docker VM
This created four docker container on the VM
Bridged the four containers together to generate a webpage on port 8443
This web page allows users to remote into almost any machine or container on a network using SSH, VNC, RDP, and more
Users and Groups can be created to limit permisons and allow for a secure enviorment

To deploy this in azure the peervm.json file just need to be loaded into Azure and it will walk you through the rest, once the vm is created and deployed make your way to the website HTTPS://hostname:8443 replace hostname with your dns name or ip address The default login is listed above.
