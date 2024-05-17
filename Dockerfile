FROM registry.fedoraproject.org/fedora-toolbox:40
COPY extra-packages /
RUN dnf -y distro-sync &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN ln -fs /usr/bin/flatpak-xdg-open /usr/bin/xdg-open &&\
    ls -s /usr/bin/host-spawn /usr/bin/code &&\
    ls -s /usr/bin/host-spawn /usr/bin/flatpak &&\
    ls -s /usr/bin/host-spawn /usr/bin/podman &&\
    ls -s /usr/bin/host-spawn /usr/bin/rpm-ostree
RUN rm /extra-packages
