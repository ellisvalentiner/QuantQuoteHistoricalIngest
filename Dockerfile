FROM postgres:9.6.4-alpine

LABEL maintainer="Ellis Valentiner"

ADD ./ .

RUN chmod +x script.sh
RUN /etc/init.d/postgresql start && ./script.sh

CMD ["postgres"]
