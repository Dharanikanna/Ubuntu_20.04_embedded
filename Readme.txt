1. Create docker with Dockerfile configuration

2.Build docker image with build.bat script or use the below command
  Build the Docker Image
	Use the docker build command to create a Docker image from your Dockerfile. You can assign a name to your image with the -t option. For example:
	cmd : docker build -t embedded_emulator .

3. Run docker with run.bat script use the below command
	cmd : docker run --rm -it embedded_emulator


# verify the docker installation process
# docker info

4. Setup Docker bat file to setup the image by pulling the image from cloud.
	setup_docker.bat

5. Push Docker Image: Run it in your command prompt to log in to Docker Hub, tag the image, and push it.

6. Pull Docker Image: Run it in your command prompt to pull the image from Docker Hub and run it.