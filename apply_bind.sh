#!/bin/bash

envsubst < indexer-bind/sts.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-bind/ingress.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-bind/svc.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-bind/svc_node_port.yaml | kubectl -n $NAMESPACE apply -f -
