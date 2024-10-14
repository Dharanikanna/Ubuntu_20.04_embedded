@echo off
REM Log in to Docker Hub
docker login

REM Tag the Docker image
set IMAGE_NAME=embedded_emulator
set DOCKER_USERNAME=dharanikanna
set TAG=latest

docker tag %IMAGE_NAME% %DOCKER_USERNAME%/%IMAGE_NAME%:%TAG%

REM Push the Docker image to Docker Hub
docker push %DOCKER_USERNAME%/%IMAGE_NAME%:%TAG%

if ERRORLEVEL 1 (
    echo Failed to push the Docker image.
) else (
    echo Docker image pushed successfully.
)
