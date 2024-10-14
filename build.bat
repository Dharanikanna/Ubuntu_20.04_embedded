@echo off
docker build -t embedded_emulator .
if ERRORLEVEL 1 (
    echo Failed to build the Docker image.
) else (
    echo Docker image built successfully.
)
