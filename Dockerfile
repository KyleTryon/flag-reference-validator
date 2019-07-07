FROM python:3.7-alpine

RUN apk update
RUN apk add --no-cache the_silver_searcher

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

ENTRYPOINT ["python", "-m", "main"]