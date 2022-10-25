
# Syft
<!-- TOC -->

- [Syft](#syft)
  - [Description](#description)
  - [Features](#features)
  - [Usage](#usage)
    - [Direct](#direct)
    - [YAML Foreman, puppetlabs/chocolatey module](#yaml-foreman-puppetlabschocolatey-module)

<!-- /TOC -->
## Description

A CLI tool and Go library for generating a Software Bill of Materials (SBOM) from container images and filesystems [https://github.com/anchore/syft](https://github.com/anchore/syft)

## Features

- Install and uninstall via Chocolatey
- Supports 64-bit version

## Usage

### Direct

```cmd
choco install syft -y
```

### YAML (Foreman, puppetlabs/chocolatey module)

```yaml
syft:
  ensure: latest
  provider: chocolatey
```

or

```yaml
syft:
  ensure: latest
```
