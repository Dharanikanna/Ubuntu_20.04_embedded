@echo off
REM Run the Docker container with the specified volume
docker run --rm -it --hostname dharanikanna -v D:\Docker\Emulator\data:/usr/src/embedded_emulator/data embedded_emulator /bin/bash

REM Check if the Docker container ran successfully
if ERRORLEVEL 1 (
    echo Failed to run the Docker container.
) else (
    echo Docker container is running successfully.
)
