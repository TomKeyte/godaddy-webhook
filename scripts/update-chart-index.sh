#!/bin/bash

ROOT_DIR=$(dirname "$(dirname "$(readlink -f "$0")")")

helm package ${ROOT_DIR}/deploy/helm -d charts
helm repo index ${ROOT_DIR}/charts