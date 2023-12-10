# Fedora Toolbox

Custom container image for [Toolbx](https://containertoolbx.org/).
To create toolbox from image built by GitHub Actions:

```sh
toolbox create -i ghcr.io/fmhahne/fedora-toolbox:main fedora-toolbox-$(rpm -E %fedora)
```
