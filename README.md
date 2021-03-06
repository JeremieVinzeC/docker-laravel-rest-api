# docker-laravel-api
A pretty simplified docker-compose workflow that sets up a LEMP network of containers for local Laravel development. You can view the full article that inspired this repo [here](https://medium.com/@aschmelyun).


# Usage
To get started, make sure you have [Docker installed](https://https://www.docker.com/products/docker-desktop) on your system, and then clone this repository.

First add/clone your entire Laravel project to the `src` folder, then open a terminal and from this cloned respository's root run `docker-compose up -d --build`. Open up your browser of choice to [http://localhost:8080](http://localhost:8080) and you should see your Laravel app running as intended. **Your Laravel app needs to be in the src directory first before bringing the containers up, otherwise the artisan container will not build, as it's missing the appropriate file.** 

**Composer:**
- `docker-compose run --rm composer update`

**Artisan:**
- `docker-compose run --rm artisan migrate` 