#!/bin/bash

# Load configuration
. /etc/elementary-build.conf
if [ -r ~/elementary-build.conf ]; then
  . ~/elementary-build.conf
fi

# Start loop
for arch in `echo $target_archs` ; do for dist in `echo $target_distros` ; do elementary-build ${dist} ${arch} ; done ; done
