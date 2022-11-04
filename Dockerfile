FROM python:3.10-alpine

WORKDIR /desafio

COPY requirements.txt /desafio/
RUN pip install -r requirements.txt

COPY . /desafio/

