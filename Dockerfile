FROM ubuntu:latest
MAINTAINER vikashashoke@gmail.com

# Install necessary packages and unzip
RUN apt-get update && \
    apt-get install -y apache2 zip && \
    apt-get clean

# Add your zip file and unzip it
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

# Set the command to start Apache HTTP server
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port for HTTP
EXPOSE 80
