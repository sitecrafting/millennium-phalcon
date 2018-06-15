# Millennium Phalcon

This is a [Phalcon PHP](https://phalconphp.com/) image based on [Lando](https://docs.devwithlando.io/), so we basically _had_ to call it that.

## Usage with Lando

This image was designed to work as an override for the `php` service within Lando's `lamp` recipe:

```
name: my-phalcon-app
recipe: lamp
config:
  webroot: www

services:
  appserver:
    type: php:custom
    overrides:
      services:
        image: sitecrafting/millennium-phalcon
```

Millennium Phalcon _should_ be generic enough to work as a drop-in replacement for any Apache-based PHP service. There aren't any non-Apache images at the moment but, theoretically, all you need to do is to build a new image with the desired `FROM` directive in the `Dockerfile`.

## Usage with vanilla Docker

Run a barebones image without Lando:

```
docker run -it -p 8080:80 -v /path/to/your/app/root:/var/www sitecrafting/millennium-phalcon
```

## Issues/Contributions

Reach out with a GH issue or PR, and I'll get my people to work on it.

## License

MIT
