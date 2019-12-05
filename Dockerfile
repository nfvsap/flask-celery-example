FROM python:3.6-stretch

WORKDIR /app
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
