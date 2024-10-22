@echo off
REM Run the Docker container with the specified volume
docker run --rm -it --hostname dharanikanna -v D:\Docker\Emulator\data:/usr/src/embedded_emulator/data embedded_emulator /bin/bash

REM Check if the Docker container ran successfully
if ERRORLEVEL 1 (
    echo Failed to run the Docker container.
) else (
    echo Docker container is running successfully.
)

######################################################################################################################

@REM #Step 1 (Windows)
@REM #If I need to run the image in GUI then I have to run the command below
@REM # docker run -it --rm -it --hostname dharanikanna -p 4000:4000 embedded_emulator

@REM #Step 2 (Ubuntu image)
@REM #Start NoMachine Inside the Container: After you run the container, you'll need to start NoMachine manually inside it:
@REM #/usr/NX/bin/nxserver --startup

@REM #Start NoMachine Inside the Container: After you run the container, you'll need to start NoMachine manually inside it:
@REM #/usr/NX/bin/nxserver --startup

######################################################################################################################
