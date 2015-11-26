FROM nimaen/ubuntu

# Install php5-fpm, nginx and some essentials
RUN apt-get update
RUN apt-get install -y php5-cli php5-gd
RUN rm -rf /var/lib/apt/lists/*

# Get grav
RUN git clone https://github.com/getgrav/grav.git /var/www

# Install Grav
WORKDIR /var/www
RUN bin/composer.phar self-update
RUN bin/grav install
RUN chown www-data:www-data .
RUN chown -R www-data:www-data *
RUN find . -type f | xargs chmod 664
RUN find . -type d | xargs chmod 775
RUN find . -type d | xargs chmod +s
RUN umask 0002

# Content
VOLUME /var/www

# Default command
CMD /bin/true
