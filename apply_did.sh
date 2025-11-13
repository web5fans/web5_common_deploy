#!/bin/bash

envsubst < indexer-did/sts.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-did/ingress.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-did/svc.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < indexer-did/svc_node_port.yaml | kubectl -n $NAMESPACE apply -f -
