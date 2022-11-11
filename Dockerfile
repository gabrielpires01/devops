FROM ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip libpq-dev

WORKDIR /desafio
COPY . /desafio/

COPY requirements.txt /desafio/
RUN pip install -r requirements.txt

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]