#!/bin/sh

set -e

docker build . -t technical_challenge_01_app --build-arg ARG_LINUX_LOCALE=en_US.UTF-8 --build-arg ARG_RUBY_VERSION=3.1.2 --build-arg ARG_NODE_VERSION=18.4.0 -q
