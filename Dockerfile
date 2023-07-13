# @author Mack_TB
# @since 06/07/2023
# @version 1.0.2

FROM python:3.11-slim

EXPOSE 8000
WORKDIR /home/app
ADD hyper-app .
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]