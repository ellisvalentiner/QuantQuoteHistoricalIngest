FROM postgres:9.6.4-alpine

LABEL maintainer="Ellis Valentiner"

ADD script.sql
ADD script.sh

RUN chmod +x script.sh
RUN ./script.sh

CMD ["postgres"]
