#!/bin/bash

# Make sure Udev doesn't block our network
echo "cleaning up udev rules"
rm -rf /etc/udev/rules.d/70-persistent-net.rules
