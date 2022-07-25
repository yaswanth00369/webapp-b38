FROM httpd:2.4

LABEL author="YASWANTH"
LABEL date="2022-07-24"
LABEL supprort="support@example.com"


RUN mkdir /data
RUN useradd Devops

COPY index.html /usr/local/apache2/conf/

ENTRYPOINT [ "apachectl", "-DFOREGROUND" ]

EXPOSE 80

ARG Hellow=We_are_mergers_of_different_envs

ENV $ {Hellow}

WORKDIR /data

RUN echo "Welcome to Node.js" > file.html
RUN cp file.html /usr/local/apache2/conf/

VOLUME /data

USER Devops