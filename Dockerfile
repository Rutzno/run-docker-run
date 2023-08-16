# @author Mack_TB
# @since 06/07/2023
# @version 1.0.3

FROM python:3.11-slim

EXPOSE 8000
WORKDIR /home/app
ADD hyper-app .
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]

# command docker to build new image
# docker build -t hyper-web-app-m:latest .

# docker run -d -p 8001:8002 --name my_container-m hyper-web-app-m