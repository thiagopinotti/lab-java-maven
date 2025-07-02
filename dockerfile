FROM codercom/code-server:latest

# Instala dependências do sistema e ferramentas de desenvolvimento
USER root

RUN apt-get update && \
    apt-get install -y \
    git \
    openjdk-17-jdk \
    maven \
    curl \
    unzip \
    nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Configura JAVA_HOME e MAVEN_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV MAVEN_HOME=/usr/share/maven
ENV PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

# Define pasta de trabalho padrão
WORKDIR /home/coder/project

# Exponha a porta padrão do Code-Server
EXPOSE 8080

# Volta para o usuário padrão do container
USER root
