docker run --name artifactory -v $PWD/artifactory/var/:/var/opt/jfrog/artifactory:z -d -p 8081:8081 -p 8082:8082 docker.bintray.io/jfrog/artifactory-oss:latest
