# Ctop
<!-- TOC -->

- [Ctop](#ctop)
  - [Description](#description)
  - [Features](#features)
  - [Changelog](#changelog)
  - [-01-09 Build 0.35.0](#-01-09-build-0350)
    - [-01-05 Build 0.34.0](#-01-05-build-0340)
  - [Usage](#usage)
    - [Direct](#direct)
    - [YAML Foreman, puppetlabs/chocolatey module](#yaml-foreman-puppetlabschocolatey-module)

<!-- /TOC -->
## Description

A CLI tool and Go library for generating a Software Bill of Materials (SBOM) from container images and filesystems [https://github.com/anchore/syft](https://github.com/anchore/syft)

## Features

- Install and uninstall via Chocolatey
- Supports 64-bit version

## Changelog

## 2022-01-09 Build 0.35.0

- version 0.35.0

### 2022-01-05 Build 0.34.0

- version 0.34.0

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
