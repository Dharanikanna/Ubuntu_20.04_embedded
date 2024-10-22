@echo off

REM Check if Docker is running
docker info >nul 2>&1
IF ERRORLEVEL 1 (
    echo Docker is not running. Please start Docker Desktop.
    pause
    exit /b
)

REM Step 1: Run the Docker container with VNC
docker run -d -p 4000:4000 --name embedded_emulator_gui embedded_emulator /bin/bash -c "apt-get update && apt-get install -y xfce4 xfce4-goodies tightvncserver && mkdir -p /root/.vnc && echo 'password' | vncpasswd -f > /root/.vnc/passwd && chmod 600 /root/.vnc/passwd && vncserver :1 -geometry 1280x800 -depth 24"

echo VNC server is running. You can connect using a VNC client to localhost:4000 with password 'password'.
pause
