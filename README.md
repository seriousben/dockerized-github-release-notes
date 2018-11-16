# Dockerized github-release-notes


Release from the comfort of docker using github-release-notes.

## Usage

```console
export GREN_GITHUB_TOKEN=<your github token>
docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen <glen command and options>

# Release
docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen release

# Changelog
docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen changelog

# Changelog and release
docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen changelog --generate
```

## Documentation

All documentation available in https://github.com/github-tools/github-release-notes

## Makefile target

```make
.PHONY: release
release:
	docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen changelog --generate
```

## release.sh script

```make
#!/bin/bash
set -e
docker run --rm -e GREN_GITHUB_TOKEN -v `pwd`:/usr/local/src/myapp playground7/glen changelog --generate
```
