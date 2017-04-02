FROM node:alpine

MAINTAINER Popov Gennadiy <me@westtrade.tk>

ARG BUILD_DATE
ARG VCS_REF

LABEL com.westtrade.build-date=$BUILD_DATE \
	com.westtraed.docker.dockerfile="/Dockerfile" \
	com.westtrade.license="MIT" \
	com.westtrade.name="Sails server, based on Alpine docker image" \
	com.westtrade.vcs-ref=$VCS_REF \
	com.westtrade.vcs-type="Git" \
	com.westtrade.vcs-url="https://github.com/westtrade/sails"

WORKDIR /etc/server

RUN npm i nodemon -g

COPY ./entrypoint.sh ./entrypoint.sh
EXPOSE 1337

ENTRYPOINT ./entrypoint.sh
