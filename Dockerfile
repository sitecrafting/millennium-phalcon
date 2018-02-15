FROM devwithlando/php:7.0-apache

LABEL maintainer="Coby Tamayo <ctamayo@sitecrafting.com>" license="MIT"

# Configure PHP to include Phalcon module
COPY phalcon.ini .

# Install Phalcon
RUN git clone --depth=1 git://github.com/phalcon/cphalcon.git /cphalcon \
  && cd /cphalcon/build \
  && ./install \
  && /usr/local/bin/docker-php-ext-enable phalcon \
  && apache2ctl restart
