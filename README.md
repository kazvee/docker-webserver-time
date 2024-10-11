# 🕸️ Docker Web Server Time ⌚

Docker Web Server Time is a repo for learning more about making webservers using Docker

## Getting Started

* Build the image:  
`docker build -t first-web-server -f web-server.Dockerfile .`

* Create and start a container named 'awesome-webserver' and bind outside port 5001 to inside port 5000:  
`docker run -d --name awesome-webserver -p 5001:5000 first-web-server`

* Confirm the container is running:  
`docker ps`

* Check the container logs using its name instead of ID:  
` docker logs awesome-webserver`

* Create a container, run a command to create and read a file, then remove the container:  
`docker run --rm --entrypoint sh ubuntu -c "echo 'HELLO WORLD' > /tmp/file && cat /tmp/file"`  
This is good for one-off commands BUT everything created within a container gets deleted when the container exits.

* Use the volume mounting feature ('-v' or '--volume') to map a folder on local machine to a folder in the container:  
`docker run --rm --entrypoint sh -v /tmp/container:/tmp ubuntu -c "echo 'HELLO WORLD' > /tmp/file && cat /tmp/file"`

### Note
If you use `-v` to mount files, make sure you are mounting existing files. If you try to map a file on your host machine that doesn't exist, Docker will create a directory instead and map it as a directory within the container.