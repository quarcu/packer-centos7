#!/usr/bin/env bash

if type apt-get >/dev/null 2>&1; then
    apt-get clean
fi

if type yum >/dev/null 2>&1; then
    yum clean all
fi

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Sync to ensure that the delete completes before this moves on.
sync
sync
sync

