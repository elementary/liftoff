liftoff -- build packages for elementary OS
=

## DESCRIPTION

[liftoff(1)](https://github.com/elementary/liftoff/blob/master/liftoff.1.html) is a `pbuilder`-based script and configuration file for building Debian and Ubuntu packages that supports multiple architectures and custom mirrors, including elementary's.

## QUICK START

This process uses a significant amount of bandwidth and disk space. Seriously consider using a caching proxy such as `apt-cacher-ng`. Set the URL of the `http_proxy` in `/usr/lib/liftoff/pbuilderrc`.

Execute this in a directory containing both source code and Debian packaging:

    sudo liftoff -a amd64 -d xenial -o /tmp/output-dir

## OPTIONS

*   `-a [architecture]`

    Specifies the architecture to use. The supported values are `amd64` or `armhf` or `i386`.

*   `-d [distribution]`

    Specifies the base Debian or Ubuntu distribution to use.
    The supported values may include `testing` or `xenial`.
    Available distributions are defined in `/usr/lib/liftoff/pbuilderrc` as provided by `debootstrap`.

*   `-o [output location]`

    Specifies the location the build result output after building.
    The resulting .deb, log and other files are copied there.

## FILES

*   `/usr/lib/liftoff/hooks/*`

    `pbuilder` hooks used a various stages of the build process such as `lintian`.

*   `/usr/lib/liftoff/pbuilderrc`

    Extensive `pbuilderrc` passed to underlying `pbuilder` instance.

## AUTHOR

Cody Garver <cody@elementary.io>
