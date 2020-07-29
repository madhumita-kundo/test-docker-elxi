#!/bin/bash

#ARG IMAGE_VER
FROM elixir:1.10

COPY couchdb couchdb

WORKDIR couchdb

RUN ./configure&&make

ENTRYPOINT [ "mix" ]
