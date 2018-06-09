# Static mosh-server builder

Clone this repository and type `make` to build a statically linked
`mosh-server` binary. Requires Docker.

```
$ git clone https://github.com/snsinfu/static-mosh-server-builder
$ make
$ ls out
mosh-server
```

Copy the binary to a linux host and mosh into the host!

```
$ scp out/mosh-server linuxhost:
$ mosh --server='~/mosh-server' linuxhost
```
