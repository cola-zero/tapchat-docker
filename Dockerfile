# Base image
FROM ubuntu:14.04

# Package dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install -y -q nodejs-legacy npm

# Time zone
RUN echo "Europe/Oslo" > /etc/timezone
RUN dpkg-reconfigure tzdata

# Install tapchat
RUN npm install --silent -g tapchat coffee-script

# Tapchat port
EXPOSE 8067

# Add user
RUN useradd -m tapchat
USER tapchat

# Run tapchat
ENTRYPOINT ["tapchat"]
CMD ["start", "-f"]
