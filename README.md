# Unregistry (docker-pussh) Installer Action

Installs the [`docker-pussh`](https://github.com/psviderski/unregistry) plugin for Docker CLI, allowing you to push images without needing to log in to a registry.

## Usage

```yaml
- uses: rezakargar/setup-unregistry@latest
  with:
    version: latest # or a specific version like v1.0.0