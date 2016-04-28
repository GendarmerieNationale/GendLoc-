FROM ubuntu

ADD . /app/

# ENV DEBIAN_FRONTEND noninteractive
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN /app/scripts/init.sh

EXPOSE 8081

#RUN node /app/
ENTRYPOINT /app/scripts/run.sh
