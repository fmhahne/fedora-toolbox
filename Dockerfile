FROM registry.fedoraproject.org/fedora-toolbox:38
COPY extra-packages /
RUN dnf -y distro-sync &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN rm /extra-packages
