# Use an official image for C++ development
FROM ubuntu:20.04

# Set non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    cmake \
    make \
    qemu-system-arm \
    gdb \
    wget \
    unzip \
    gcc-arm-none-eabi \
    software-properties-common

# Install Renode
#RUN wget https://builds.renode.io/renode-latest-linux-portable.tar.gz -O renode.tar.gz && \
#    mkdir /opt/renode && \
#    tar -xvzf renode.tar.gz -C /opt/renode && \
#    rm renode.tar.gz

# Update PATH environment variable for Renode
# ENV PATH="/opt/renode:$PATH"

# Expose NoMachine's default port
EXPOSE 4000

# Start NoMachine server
CMD ["/usr/NX/bin/nxserver", "--startup"]

# Set working directory in the container
WORKDIR /usr/src/embedded_emulator

# Copy the current directory contents into the container
# COPY . .

# Run CMake and make to build the C++ project
# RUN cmake . && make

# Command to run the application when the container starts
# CMD ["./embedded_emulator"]
