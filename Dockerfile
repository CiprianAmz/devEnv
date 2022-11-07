#Download base image ubuntu 20.04
FROM ubuntu:20.04

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN yes | apt install curl
RUN yes | apt install build-essential
RUN yes | apt install git
RUN yes | apt install python3

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustinstall.sh
RUN chmod +x rustinstall.sh
RUN ./rustinstall.sh -y
RUN rm rustinstall.sh

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

RUN yes | apt install emacs

CMD ["bash"]
