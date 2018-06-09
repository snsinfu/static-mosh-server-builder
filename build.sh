#!/bin/sh -eu

name="mosh-${MOSH_VERSION}"

curl -fsSLO "https://mosh.org/${name}.tar.gz"
tar xzf "${name}.tar.gz"

cd "${name}"
./configure LDFLAGS="-static"
make -j

strip -o /srv/out/mosh-server src/frontend/mosh-server
