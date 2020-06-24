FROM rastasheep/ubuntu-sshd
RUN apt-get update && apt-get -y install libssl-dev
EXPOSE 80
CMD ["/usr/sbin/sshd", "-D"]