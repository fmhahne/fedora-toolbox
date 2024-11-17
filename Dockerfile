FROM registry.fedoraproject.org/fedora-toolbox:latest
COPY extra-packages /
RUN dnf -y distro-sync &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN ln -s /usr/bin/host-spawn /usr/bin/code &&\
    ln -s /usr/bin/host-spawn /usr/bin/flatpak &&\
    ln -s /usr/bin/host-spawn /usr/bin/podman &&\
    ln -s /usr/bin/host-spawn /usr/bin/restic &&\
    ln -s /usr/bin/host-spawn /usr/bin/rpm-ostree &&\
    ln -fs /usr/bin/host-spawn /usr/bin/xdg-open
RUN rm /extra-packages
