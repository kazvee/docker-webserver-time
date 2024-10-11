FROM ubuntu

LABEL maintainer="https://github.com/kazvee"

USER root

COPY ./web-server.bash /

RUN chmod 755 /web-server.bash
RUN apt -y update
RUN apt -y install bash netcat-openbsd

USER nobody

ENTRYPOINT [ "/web-server.bash" ]