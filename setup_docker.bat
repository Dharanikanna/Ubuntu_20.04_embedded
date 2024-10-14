@echo off

REM Step 1: Build the Docker image
docker build -t embedded_emulator .

REM Step 2: Tag the image
docker tag embedded_emulator dharanikanna/embedded_emulator:latest

REM Step 3: Log in to Docker Hub
echo Logging into Docker Hub...
docker login -u dharanikanna

REM Step 4: Push the image to Docker Hub
echo Pushing the Docker image to Docker Hub...
docker push dharanikanna/embedded_emulator:latest

if ERRORLEVEL 1 (
    echo Failed to push the Docker image.
) else (
    echo Docker image pushed successfully.
)

REM Step 5: Run the Docker container
docker run --rm -it dharanikanna/embedded_emulator

if ERRORLEVEL 1 (
    echo Failed to run the Docker container.
) else (
    echo Docker container is running.
)
