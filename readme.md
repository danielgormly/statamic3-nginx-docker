# statamic3-nginx-docker

Successor of [statamic-nginx-docker](https://github.com/danielgormly/statamic-nginx-docker/). Several tools to build your own statamic development or production environment.

## Building Statamic
```bash
# Clone repository
git clone git@github.com:danielgormly/statamic-nginx-docker.git my-project
cd my-project

# Create statamic project
./init.sh project-name

```

## Updating Statamic
```bash
docker run --rm -v $PWD/statamic:/app composer update
```
