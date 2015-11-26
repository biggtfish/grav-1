FROM nimaen/ubuntu

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
CMD bash
