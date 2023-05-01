# fullcycle-docker-desafio01

Publicar uma imagem no dockerhub que tenha menos de 2 MB, com um app Golang que escreva na tela Full Cycle Rocks!!

Utilizada a técnica de multistage building para montar a imagem, além de compilar o binário do app com flags para compressão.

Imagem publicada em: https://hub.docker.com/r/alexandropatrik/golang-bin/tags - 548.78 KB (compressed)

# To build:
docker build -t alexandropatrik/golang-bin:v1 .

# To run:
docker run alexandropatrik/golang-bin:v1
