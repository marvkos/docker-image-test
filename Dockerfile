FROM python:3

RUN apt update && \
    apt install \
      build-base \
      postgresql \
      postgresql-dev \
      libpq

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip intsall -no-cache-dir -r requirements.txt

COPY . .
