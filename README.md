# GitLab CLI

This provides:

1. A docker image containing [gitlab ruby gem][gem] installed
1. A shell function that act as an alias to `gitlab` to be executed inside the
   container

## Using just the shell

Clone this repository with [homesick][] or [homeshick][] and `source
.bash_alias_ruby_gitlab`. The only requirement is `docker` to be installed and
available to be used by the user.

Environment variables used are:

* `GITLAB_API_PRIVATE_TOKEN`
* `GITLAB_API_ENDPOINT` defaults to `https://gitlab.com/api/v4`

## Docker image

By *default* the image passes commands after prefixing a `gitlab` on them.
Output is unfiltered. A `Makefile` is provided to avoid manual tasks.

[gem]: https://github.com/narkoz/gitlab
[homesick]: https://github.com/technicalpickles/homesick
[homeshick]: https://github.com/andsens/homeshick
