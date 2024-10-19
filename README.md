
# Syft

![Chocolatey](https://img.shields.io/badge/Chocolatey-orange)
![Windows2016](https://img.shields.io/badge/Windows-2016-blue)
![Windows2019](https://img.shields.io/badge/Windows-2019-blue)
![Windows2022](https://img.shields.io/badge/Windows-2022-blue)
![Windows10](https://img.shields.io/badge/Windows-10-lightblue)
![Windows11](https://img.shields.io/badge/Windows-11-lightblue)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/marcinbojko)

Consider buying me a coffee if you like my work. All donations are appreciated. All donations will be used to pay for pipeline running costs
<!-- TOC -->

- [Syft](#syft)
  - [Description](#description)
  - [Features](#features)
  - [Usage](#usage)
    - [Direct](#direct)
    - [YAML Foreman, puppetlabs/chocolatey module](#yaml-foreman-puppetlabschocolatey-module)

<!-- /TOC -->
<!-- /TOC -->
## Description

A command-line tool and Go library for generating a Software Bill of Materials (SBOM) from container images and filesystems [https://github.com/anchore/syft](https://github.com/anchore/syft)

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
