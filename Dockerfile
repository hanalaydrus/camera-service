FROM python:3.6

RUN apt-get update && \
	apt-get install -y \
        build-essential

RUN pip install Flask gunicorn mysqlclient

COPY . /app
WORKDIR /app

EXPOSE 50052

CMD ["make","run"]