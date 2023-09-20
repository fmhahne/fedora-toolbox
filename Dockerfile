FROM registry.fedoraproject.org/fedora-toolbox:38
COPY extra-packages /
RUN dnf -y distro-sync &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN ln -fs /usr/bin/flatpak-xdg-open /usr/bin/xdg-open
RUN rm /extra-packages
