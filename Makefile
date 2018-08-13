# vim: tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab
#
#
#
SHELL = /bin/bash

HUGO = hugo
HUGO_WATCH_OPTS = -D
HUGO_BUILD_OPTS =
PIDFILE = .server.pid

DOCKER = docker

HUGULP = hugulp

all: build

build:
	${RM} -r public/*
	${HUGO} ${HUGO_BUILD_OPTS}
	${HUGULP} build

watch:  start gulp-watch stop

gulp-watch:
	@${HUGULP} watch

start:
	${RM} ${PIDFILE}
	${HUGO} server ${HUGO_WATCH_OPTS} & echo "$$!" > ${PIDFILE}

stop:
	[ ! -f ${PIDFILE} ] || kill "$$(cat ${PIDFILE})" > /dev/null 2>&1

