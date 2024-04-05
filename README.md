# Kubernetes-Production-Level-Project
==================
To See file or code will be pushed into Jenkins folder
cd /var/lib/jenkins/workspace/K8S-Project-Pipeline

==================
<---------WebHook Apply------>
Now Next Step on Jenkins is Go To:
1)Configure of Dashboard
2)Go to Build Triggers
2)Click on "GitHub hook trigger for GITScm polling"

===================
Now Goto Github repo section
1)Click on Settings
2)Click on WebHook
3)Add a Webhook
4)In Payload  Url "Add jenkins URL:http://16.170.140.12:8080/github-webhook/"
5)ContentType "application/json"
6)In next Step is Secret
7)Click on Jenkins User Profile & Click on Configure
8) In Api Section to Generate Token & copy it
9) Paste into Github



 ssh-keygen
then cat /root/.ssh/id_rsa 
private file you have to paste
