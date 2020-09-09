# statamic3-nginx-docker

Successor of [statamic-nginx-docker](https://github.com/danielgormly/statamic-nginx-docker/) for Statamic 3. Currently this provides a development environment only. I can provide a production environment too if there's demand. Let me know any issues. I haven't personally used this for a project.

## Building Statamic
```bash
# Clone repository
git clone git@github.com:danielgormly/statamic-nginx-docker.git my-project
cd my-project

# clear this repo and create a fresh statamic project
rm -rf .git
git init

# Create a new statamic project
docker run --rm -v $PWD:/app composer create-project statamic/statamic statamic --prefer-dist --stability=dev

# Run project
docker-compose up

# Create first user
docker run --rm -it -v $PWD:/app composer php statamic/please make:user

```

## Updating Statamic
```bash
docker run --rm -v $PWD/statamic:/app composer update
```

## Repo development notes
- See [https://hub.docker.com/_/php/](https://hub.docker.com/_/php/)