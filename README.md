# Unregistry (docker-pussh) Installer Action

[![Build Status](https://img.shields.io/github/actions/workflow/status/RezaKargar/setup-unregistry/test.yml?branch=main&label=test&style=flat-square)](https://github.com/RezaKargar/setup-unregistry/actions/workflows/test.yml)

Installs the [`docker-pussh`](https://github.com/psviderski/unregistry) plugin for Docker CLI, allowing you to push images to container registries without needing to log in (`docker login`).

## Usage

### Install the latest version

To install the most recent version of the `unregistry` plugin:

```yaml
- uses: rezakargar/setup-unregistry@v1
```

### Install a specific version
To pin to a specific version (recommended for production), use the version input:

```yml
- uses: rezakargar/setup-unregistry@v1
  with:
    version: v0.3.0  # Replace with the version you need
```