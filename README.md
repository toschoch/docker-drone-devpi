[![Docker Stars](https://img.shields.io/docker/stars/shocki/drone-devpi.svg?style=flat-square)](https://hub.docker.com/r/shocki/drone-devpi/)
[![Docker Pulls](https://img.shields.io/docker/pulls/shocki/drone-devpi.svg?style=flat-square)](https://hub.docker.com/r/shocki/drone-devpi/)

# Drone DevPi Plugin 

A Docker image based on [Alpine](https://hub.docker.com/_/alpine/) to be used as plugin for Drone CI that publishes a built `*.whl`, `*.tar.gz` and `*.zip` files to a DevPi Server. 

The plugin searches all files with these extenstions in the `dist/*`
directory of your working dir and loads them up to the specified devpi server and index.

## Usage
Publish part in your `.drone.yml` file

```yaml
  ...
  publish:
    image: shocki/drone-devpi
    server: http://"server-url":"port"/
    index: e.g. root/stable
    username: ...
    password: ...
```
