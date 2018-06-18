FROM openjdk:8-jre-alpine

WORKDIR /app

ADD https://github.com/nullpomino/nullpomino/releases/download/v7.5.0/NullpoMino7.5.0_linux.tar.gz .
RUN tar -xvf NullpoMino7.5.0_linux.tar.gz

WORKDIR NullpoMino7_5_0

EXPOSE 9200

ENTRYPOINT ["./netserver"]
