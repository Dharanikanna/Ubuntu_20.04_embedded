@echo off
REM Set Docker Hub username and image name
set DOCKER_USERNAME=dharanikanna
set IMAGE_NAME=embedded_emulator
set TAG=latest

REM Pull the Docker image from Docker Hub
docker pull %DOCKER_USERNAME%/%IMAGE_NAME%:%TAG%

if ERRORLEVEL 1 (
    echo Failed to pull the Docker image.
) else (
    echo Docker image pulled successfully.
)

REM Command to run the Docker container
docker run --rm -it %DOCKER_USERNAME%/%IMAGE_NAME%:%TAG%
