# @author Mack_TB
# @since 06/07/2023
# @version 1.0.4

FROM python:3.11-slim

LABEL author=Mack_TB

EXPOSE 8000
WORKDIR /home/app
ADD hyper-app .
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]

## command docker to build new image
# docker build -t hyper-web-app-m:latest .

## command docker to create and run a container in the detach mode;
# Map container port 8000 to the host port 8001
# docker run -d -p 8001:8000 --name my_container-m hyper-web-app-m

## CLEANING
# docker container stop container_ID
# docker container rm container_ID
# docker rmi imageName
