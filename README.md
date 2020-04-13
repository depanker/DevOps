# DevOps
Demo DevOps setup project

This is a sample project created for self learning. In this project Jenkins is setup with Artifactory.
Folder `jenkins` and `artifactory` are containing sample plugins installed and can be removed.
Running `runjenkins.sh` and `artifactory.sh` within this code checkout will pull the Docker image and install on the local machine.
If a fresh copy is needed without or if there is a problem with the currently installed plugins simpley removing  `jenkins` and `artifactory` directories and restarting the artifactory and jenkins processes should do the trick. 

For some reason we Jenkins Artifactory plugin is not able to connect to docker instance of artifactory, which is mapped
to localhost port, so we need to provide IP of docker container of artifactory.
To get the IP docker container we can execute following command :

`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_id` 

Although providing localhost:port is working when executing gradle build plugin directly.