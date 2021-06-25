FROM python:3-alpine

RUN pip install --no-cache-dir flask

COPY app.py /opt/

EXPOSE 8080

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
