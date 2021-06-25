FROM ubuntu:16.04

RUN apt-get update  && apt-get -y install python python-pip

RUN pip install flask

COPY app.py opt/

EXPOSE 8080 

ENTRYPOINT FLASK_APP=/opt/app.py run --host=0.0.0.0 --port=8080
