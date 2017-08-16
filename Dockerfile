FROM registry.eorlbruder.de/supervisord
MAINTAINER David Magnus Henriques <eorlbruder@magnus-henriques.de>

RUN pacman -Syyu --noconfirm --quiet --needed fcron && \
    pacman -Sc --noconfirm

ADD assets/fcron.conf /etc/supervisor/conf.d/fcron.conf

CMD ["supervisord", "-n"]
