#!/bin/sh

set -e

aws2 ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_DOMAIN
docker tag technical_challenge_01:latest $ECR_DOMAIN/technical_challenge_01:latest
docker push $ECR_DOMAIN/technical_challenge_01:latest -q
