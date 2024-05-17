FROM registry.fedoraproject.org/fedora-toolbox:40
COPY extra-packages /
RUN dnf -y distro-sync &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN ln -fs /usr/bin/flatpak-xdg-open /usr/bin/xdg-open &&\
    ln -s /usr/bin/host-spawn /usr/bin/code &&\
    ln -s /usr/bin/host-spawn /usr/bin/flatpak &&\
    ln -s /usr/bin/host-spawn /usr/bin/podman &&\
    ln -s /usr/bin/host-spawn /usr/bin/rpm-ostree
RUN rm /extra-packages
