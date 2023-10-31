# Tekton-pipeline

This repo builds the spectral image we use to validate apis.

## Requirements

An image repository account (like quay or docker) with necessary permissions, Container registry authentication configured and config present in quay-credentials.yaml file, and tekton pipelines up and running using openshift pipelines operator

## Build the image


```console
$ git clone https://github.com/janus-api-idp/spectral-image.git

$ cd .tekton

$ oc new-project tekton-tasks

$ kubectl apply -f quay-credentials.yml

$ kubectl apply -f pipeline.yaml

$ kubectl create -f pipelinerun.yaml

$ pipelinerun.tekton.dev/clone-build-push-run-4kgjr created

$ tkn pipelinerun logs  clone-build-push-run-4kgjr -f
```
