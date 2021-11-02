FROM python:3

RUN apt update

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -no-cache-dir -r requirements.txt

COPY . .
