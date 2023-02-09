FROM registry.fedoraproject.org/fedora-toolbox:37
COPY extra-packages /
RUN dnf -y upgrade &&\
    dnf -y install $(<extra-packages) &&\
    dnf clean all
RUN gem install -N github-pages webrick
RUN rm /extra-packages
