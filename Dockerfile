FROM alpine:3.7

# Install python 2.7 and pip
RUN apk add --no-cache bash python py-pip

# Install the python route 2 library
RUN pip install pyroute2

# Install the daemon script
COPY static_routes /usr/local/bin/

# Execute explicitily via bash to get access to the environment and
# also to allow propagation of SIGTERM signals to perform the cleanup
CMD [ "/usr/local/bin/static_routes" ]
