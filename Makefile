MOSH_VERSION = 1.3.2
ARTIFACTS = out/mosh-server _docker.ok

.PHONY: clean

out/mosh-server: _docker.ok
	mkdir -p out
	docker run -it --rm -v $${PWD}/out:/srv/out -e MOSH_VERSION=$(MOSH_VERSION) mosh-server-builder:latest

_docker.ok: Dockerfile build.sh
	docker build -t mosh-server-builder .
	@touch $@

clean:
	docker image rm mosh-server-builder
	rm -f $(ARTIFACTS)
