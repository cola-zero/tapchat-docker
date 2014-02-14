# Base image
FROM dockerfile/nodejs

# Package dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y -q python libsqlite3-dev build-essential

# Time zone
RUN echo "Europe/Oslo" > /etc/timezone
RUN dpkg-reconfigure tzdata

# Install tapchat
RUN npm install --silent --build-from-source -g tapchat

# Tapchat port
EXPOSE 8067

# Run tapchat
CMD tapchat start -f
