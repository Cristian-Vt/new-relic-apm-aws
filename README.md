# How to run the project

run it locally:
- npm install
- npm run build 
- npm run start
- docker build --build-arg NEW_RELIC_LICENSE_KEY_VALUE=<nr-licence-key> -t nr-client .
- docker run -d --name nr-container -p 0.0.0.0:3000:3000 nr-client

# Debug
docker exec -it <container id> /bin/bash

# Clean up - this will Remove Docker Images, Containers, and Volumes from your system
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker system prune -a -f
