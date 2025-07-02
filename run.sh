#!/bin/bash

# Executar Code Server com Java e Maven no Linux/macOS
docker run -d   --name code-server-java   -p 8080:8080   -e PASSWORD=123456   -v "$HOME/projetos:/home/coder/project"   thiagopinotti/code-server-java:latest
