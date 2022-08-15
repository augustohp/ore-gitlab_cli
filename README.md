# GitLab CLI

Wraps a [docker image][] containing [gitlab ruby gem][gem] to access 
[Gitlab's API][api] through the _command line_.

[gem]: https://github.com/narkoz/gitlab
[docker image]: https://hub.docker.com/r/augustohp/gitlab-cli
[api]: https://docs.gitlab.com/ee/api/

You just need:

* [Docker](https://docker.io)
* [JQ](https://stedolan.github.io/jq/) (optional)

## Usage

Clone this repository with [homesick][] or [homeshick][] and be sure that
`$HOME/bin` is inside your `$PATH`, you will able to:

    $ gitlab help

[homesick]: https://github.com/technicalpickles/homesick
[homeshick]: https://github.com/andsens/homeshick

You should create a [Personal Access Token][1] and then export it in your shell:

    $ export GITLAB_API_PRIVATE_TOKEN=<your access token>

[1]:  https://gitlab.com/profile/personal_access_tokens

Environment variables used are:

* `GITLAB_API_PRIVATE_TOKEN`
* `GITLAB_API_ENDPOINT` defaults to `https://gitlab.com/api/v4`

Some recipes for you to use:

* Trim alias (used in some examples): `alias trim="sed 's/[\s\t\"]//g'"`
* List all *clone URLs* of projects the authenticated user has access to
    `$ gitlab projects --json | jq '.result[] | .ssh_url_to_repo' | trim`
* List all repositories from an organization (limited to 250 max)
    `$ gitlab group_projects --json gitlab-org "{per_page: '250'}" | jq '.result[] | .path_with_namespace' | trim`
