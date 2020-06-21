#!/bin/sh

envsubst < exercises/skaffold.yaml.in > exercises/skaffold.yaml
envsubst < exercises/deployment.yaml.in > exercises/deployment.yaml
