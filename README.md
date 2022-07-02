
# Syft
<!-- TOC -->

- [Syft](#syft)
  - [Description](#description)
  - [Features](#features)
  - [Changelog](#changelog)
    - [-07-02 Build 0.49.0](#-07-02-build-0490)
    - [-06-05 Build 0.46.3](#-06-05-build-0463)
    - [-05-21 Build 0.46.1](#-05-21-build-0461)
    - [-05-14 Build 0.46.0](#-05-14-build-0460)
    - [-05-06 Build 0.45.1](#-05-06-build-0451)
    - [-04-10 Build 0.43.2](#-04-10-build-0432)
    - [-04-01 Build 0.43.0](#-04-01-build-0430)
    - [-02-28 Build 0.39.3](#-02-28-build-0393)
    - [-02-26 Build 0.38.0](#-02-26-build-0380)
    - [-02-10 Build 0.37.10](#-02-10-build-03710)
    - [-01-31 Build 0.36.0](#-01-31-build-0360)
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

### 2022-07-02 Build 0.49.0

- version 0.49.0

### 2022-06-05 Build 0.46.3

- version 0.46.3

### 2022-05-21 Build 0.46.1

- version 0.46.1

### 2022-05-14 Build 0.46.0

- version 0.46.0

### 2022-05-06 Build 0.45.1

- version 0.45.1

### 2022-04-10 Build 0.43.2

- version 0.43.2

### 2022-04-01 Build 0.43.0

- version 0.43.0

### 2022-02-28 Build 0.39.3

- version 0.39.3

### 2022-02-26 Build 0.38.0

- version 0.38.0

### 2022-02-10 Build 0.37.10

- version 0.37.10

### 2022-01-31 Build 0.36.0

- version 0.36.0

### 2022-01-09 Build 0.35.0

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
