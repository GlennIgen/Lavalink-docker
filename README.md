# Lavalink Docker

## Overview
Lavalink Docker is a project aimed at spawning a Lavalink container without any initial configuration. Users are responsible for creating their own configuration, allowing them to choose between Lavalink 3 or 4 and set up their own `application.yml` file as needed. Check out the developers at https://github.com/lavalink-devs/Lavalink

## Prerequisites
- Docker installed on your system
- A Docker network with a fixed IP address for the container

## Docker Network Setup
Create a Docker network with a specified subnet:
```bash
docker network create --subnet=10.55.55.0/24 LavalinkNet
```

## Installation
Run the Lavalink container with the following command (remember to change IP and Docker Net):
```bash
docker run -v /host/mount/point:/app --net YourDockerNetwork --ip 10.55.55.2 -it -p 2333:2333 --name LavalinkNet glennigen/lavalink:latest-alpine
```

## Usage
Mount your host directory to /app in the container to provide your own application.yml.
Configure your Lavalink server as needed by editing the application.yml file.

## Contributing
Contributions are welcome, but please note this is primarily a solo project intended for personal use. Feel free to submit pull requests or open issues.

## Contact
For any questions or suggestions, feel free to reach out.

## License
This project is licensed under the MIT License.
