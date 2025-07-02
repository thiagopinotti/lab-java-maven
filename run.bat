@echo off
echo Iniciando Code Server com Java e Maven no Windows...
docker run -d ^
  --name code-server-java ^
  -p 8080:8080 ^
  -e PASSWORD=123456 ^
  -v %USERPROFILE%\projetos:/home/coder/project ^
  thiagopinotti/code-server-java:latest
echo Acesse http://localhost:8080 com a senha 123456
pause
