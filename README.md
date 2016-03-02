# liftoff

## Overview

`liftoff` is a `pbuilder`-based set of scripts and configuration files for building Debian and Ubuntu packages. It supports multiple architectures (amd64, armhf, i386) and custom mirrors.

## Installation

Download, build, and install `liftoff` from source:

1. `git clone https://github.com/elementary/liftoff`

2. `cd liftoff`

3. `debuild -us -uc -j -b`

4. `sudo dpkg -i ../liftoff_*.deb`

5. `sudo apt -f install`

## Usage

Start `liftoff` in a directory of source that contains debian packaging:

`sudo liftoff -a amd64 -d xenial -o /tmp/output-directory`
