#!/usr/bin/env bash
export AUTHENTICATOR_ID="app-path"
export CONJUR_ACCOUNT="admin"
export CONJUR_ADMIN_PASSWORD="YOUKNOW"
export CONJUR_NAMESPACE_NAME="conjur-follower-namespace"
export DOCKER_REGISTRY_URL="https://quay.io"
export DOCKER_REGISTRY_PATH="robin.mohan/kubernetes-conjur-demo"
export PLATFORM="openshift"
export TEST_APP_DATABASE="mysql"
export TEST_APP_NAMESPACE_NAME="rmohanconjur"

# Set the default values of environment variables used by the scripts
export PULL_DOCKER_REGISTRY_URL=${PULL_DOCKER_REGISTRY_URL:-${DOCKER_REGISTRY_URL}}
export PULL_DOCKER_REGISTRY_PATH=${PULL_DOCKER_REGISTRY_PATH:-${DOCKER_REGISTRY_PATH}}

PLATFORM="${PLATFORM:-kubernetes}"  # default to kubernetes if env var not set
CONJUR_AUTHN_LOGIN_RESOURCE="${CONJUR_AUTHN_LOGIN_RESOURCE:-service_account}" # default to service_account

MINIKUBE="${MINIKUBE:-false}"
MINISHIFT="${MINISHIFT:-false}"

LOCAL_AUTHENTICATOR="${LOCAL_AUTHENTICATOR:-false}"

# Some older workflows that use this script repo may depend upon
# the the use of 'DEPLOY_MASTER_CLUSTER' environment variable rather than
# the newer (and more accurately named) 'CONFIGURE_CONJUR_MASTER'.
DEPLOY_MASTER_CLUSTER="${DEPLOY_MASTER_CLUSTER:-false}"
CONFIGURE_CONJUR_MASTER="${CONFIGURE_CONJUR_MASTER:-$DEPLOY_MASTER_CLUSTER}"

ANNOTATION_BASED_AUTHN="${ANNOTATION_BASED_AUTHN:-false}"
CONJUR_OSS_HELM_INSTALLED="${CONJUR_OSS_HELM_INSTALLED:-false}"
TEST_APP_LOADBALANCER_SVCS="${TEST_APP_LOADBALANCER_SVCS:-true}"
HELM_RELEASE="${HELM_RELEASE:-conjur-oss}"

USE_DOCKER_LOCAL_REGISTRY="${USE_DOCKER_LOCAL_REGISTRY:-false}"
DOCKER_EMAIL="${DOCKER_EMAIL:-}"
