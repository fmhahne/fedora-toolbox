# Fedora Toolbox

Custom container image for [Toolbx](https://containertoolbx.org/).

```sh
podman build . -t $USER/fedora-toolbox:latest
toolbox create -i $USER/fedora-toolbox -c fedora-toolbox-37
```

To create toolbox from image built by GitHub Actions:

```sh
toolbox create -i ghcr.io/fmhahne/fedora-toolbox:main -c fedora-toolbox-37
```
