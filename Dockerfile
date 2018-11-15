FROM golang:1.11.2-alpine3.8

RUN apk update && apk add git && apk --no-cache add ca-certificates yarn jq

RUN wget -q -O /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(wget -q -O- https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x /usr/bin/kubectl

RUN wget -q -O /usr/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v1.0.10/kustomize_1.0.10_linux_amd64 && chmod +x /usr/bin/kustomize