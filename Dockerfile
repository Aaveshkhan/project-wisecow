FROM ubuntu:latest
RUN apt -y update
RUN apt install fortune-mod cowsay -y
RUN apt install -y netcat-openbsd
COPY ./wisecow.sh /wisecow.sh
RUN chmod +x /wisecow.sh
ENV PATH="$PATH:/usr/games"
EXPOSE 4499
ENTRYPOINT ["/wisecow.sh"]
