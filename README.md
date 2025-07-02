# 💻 IDE Code Server com Java, Maven e Git via Docker

Este repositório fornece um ambiente de desenvolvimento acessível via navegador com:

- Java (OpenJDK 17)
- Maven
- Git
- Terminal integrado (VS Code Web / Code Server)

Imagem usada: [thiagopinotti/code-server-java:latest](https://hub.docker.com/r/thiagopinotti/code-server-java)

---

## ✅ Pré-requisitos

- Docker instalado:
  - [Docker Desktop para Windows/macOS](https://www.docker.com/products/docker-desktop)
  - Ou `sudo apt install docker.io` no Linux

---

## 🚀 Instruções por sistema operacional

### 🐧 Linux / macOS

#### 1. Clone este repositório

```bash
git clone https://github.com/thiagopinotti/lab-java-maven.git
cd lab-java-maven.git
```

#### 2. Rode com Docker Compose

```bash
docker-compose up -d
```

Ou use o script direto:

```bash
./run.sh
```

Acesse no navegador: http://localhost:8080  
Senha: **123456**

---

### 🪟 Windows

#### 1. Instale o [Docker Desktop](https://www.docker.com/products/docker-desktop)

#### 2. Baixe este repositório

Via Git:

```bash
git clone https://github.com/thiagopinotti/lab-java-maven.git
cd lab-java-maven.git
```

Ou clique em “Code → Download ZIP” no GitHub.

#### 3. Execute com `run.bat`

Clique duas vezes no `run.bat` ou execute no Prompt de Comando:

```
run.bat
```

Acesse: http://localhost:8080  
Senha: **123456**

---

## 📁 Onde ficam os arquivos?

- No Linux/macOS: `~/projetos`
- No Windows: `C:\Users\SeuUsuario\projetos`

Esses diretórios serão usados como volume do container para persistência.

---

## 🛑 Parar o ambiente

```bash
docker-compose down
# ou
docker stop code-server-java && docker rm code-server-java
```
