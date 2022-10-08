FROM registry.fedoraproject.org/fedora-toolbox:36
COPY extra-packages /
RUN dnf -y upgrade
RUN dnf -y install $(<extra-packages)
RUN dnf clean all
RUN rm /extra-packages
