# axyl-pkgbuild

Axyl OS' Collection of package build files (PKGBUILD) for the core repo

## Workflow

The package update system for the `axyl-3party-repo` has been Dockerized.

Every week, an [action](./.github/workflows/update-repo-3party.yml) in GitHub Actions will build the 3rd-party packages,
and commit and push to the package repo. The action may also be triggered manually.

It utilizes a specialized Docker image built from this repo's [Dockerfile](./Dockerfile).
The action requires an API token named `API_TOKEN_GITHUB` for write access.

In the 'Settings' page of this repo, you can add a new secret. `API_TOKEN_GITHUB` should
be a personal API token you generate from [here](https://github.com/settings/tokens).
