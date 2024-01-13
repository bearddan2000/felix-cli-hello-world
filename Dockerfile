FROM ubuntu:22.04

WORKDIR /workspace

RUN apt-get update

RUN apt-get install -y git make g++ ocaml-native-compilers python3
    
RUN git clone https://github.com/felix-lang/felix.git

WORKDIR /workspace/felix/buildscript

RUN ./linuxsetup.sh

WORKDIR /workspace/felix
    
RUN make build && \
    make install

WORKDIR /code

COPY bin .

CMD "./run.sh"