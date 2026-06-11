FROM mcr.microsoft.com/devcontainers/javascript-node:1-20-bookworm

USER root

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    nano \
    vim \
    jq \
    tree \
    dnsutils \
    iputils-ping \
    net-tools \
    python3 \
    python3-pip \
    shellcheck \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER vscode
