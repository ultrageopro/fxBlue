#!/usr/bin/env bash

set -oue pipefail

echo "--> Installing dependencies"
rpm-ostree install gettext nautilus-python
echo "--> Downloading nautilus-open-any-terminal"
git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal
echo "--> Installing nautilus-open-any-terminal"
cd nautilus-open-any-terminal
make
sudo make install schema
