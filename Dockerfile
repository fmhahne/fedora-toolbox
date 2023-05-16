FROM registry.fedoraproject.org/fedora-toolbox:38
COPY extra-packages /
RUN dnf -y upgrade &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean packages
RUN rm /extra-packages
