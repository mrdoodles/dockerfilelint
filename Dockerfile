FROM mhart/alpine-node:5.9.1

LABEL MAINTAINER="Marc Campbell <marc.e.campbell@gmail.com>"

COPY ./package.json /dockerfilelint/package.json
COPY ./lib /dockerfilelint/lib
COPY ./bin /dockerfilelint/bin
#COPY entrypoint.sh /entrypoint.sh

WORKDIR /dockerfilelint
RUN npm install

#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/dockerfilelint/bin/dockerfilelint"]
CMD ["-"]
