# tapchat-docker

Dockerfile for running [tapchat](http://tapchatapp.com/).

## Usage

1. Build the image:

    `docker build -t martinp/tapchat .`

2. Create config (interactively):

    `docker run -i -v /host/path/to/.tapchat:/root/.tapchat
-t martinp/tapchat tapchat start -f`

3. Run daemonized container:

    `docker run -d -p 8067:8067 -v /host/path/to/.tapchat:/root/.tapchat
-t martinp/tapchat`
