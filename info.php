<?php

/*
 * Just for testing purposes. Running:
 *
 *  docker -it -p 8080:80 -v $(pwd):/var/www/html sitecrafting/millennium-phalcon
 *
 * from this directory and going to localhost:8080 should show phalcon installed
 * as a PHP module.
 *
 * @copyright 2018 SiteCrafting, Inc.
 * @author Coby Tamayo <ctamayo@sitecrafting.com>
 */

phpinfo();
