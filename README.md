# axyl-pkgbuild

[![Update 3rd-party and local repo](https://github.com/axyl-os/axyl-pkgbuild/actions/workflows/update-repo-3party-local.yml/badge.svg?branch=master)](https://github.com/axyl-os/axyl-pkgbuild/actions/workflows/update-repo-3party-local.yml) [![Update core repo](https://github.com/axyl-os/axyl-pkgbuild/actions/workflows/update-repo-core.yml/badge.svg?branch=master)](https://github.com/axyl-os/axyl-pkgbuild/actions/workflows/update-repo-core.yml)

Axyl OS' Collection of package build files (PKGBUILD) for the core repo

## Workflow (WIP)

The package update system for the three repositories has been Dockerized and
automated through GitHub Actions.

Periodically, [workflows](./.github/workflows/) in GitHub Actions will build
each repo's packages, and commit and push to their respective package repos.
The workflows may also be triggered manually.

The actions utilize a specialized Docker image built from this repo's [Dockerfile](./Dockerfile).
The actions require an API token named `API_TOKEN_GITHUB` for write access.

In the 'Settings' page of this repo, you can add a new secret. `API_TOKEN_GITHUB` should
be a personal API token you generate from [here](https://github.com/settings/tokens).


## Schedule

- **Every 3rd day of the month:** - 3rd Party Repo, Local Repo
- **Every 1st of the Month:** - Core Repo
