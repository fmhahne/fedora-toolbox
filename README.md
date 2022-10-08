# Fedora Toolbox

Custom container image for [Toolbx](https://containertoolbx.org/).

```sh
podman build . -t $USER/fedora-toolbox:latest
toolbox create -i $USER/fedora-toolbox -c fedora-toolbox-36
```
