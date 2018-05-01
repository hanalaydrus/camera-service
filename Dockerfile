FROM python:3.6

RUN apt-get update

RUN pip install Flask mysqlclient

COPY . /app
WORKDIR /app

ENV FLASK_APP=main.py

CMD ["make","run"]