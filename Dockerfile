FROM ruby:2

LABEL "Maintainer" "Augusto Pascutti <augusto.hp@gmail.com>"

ENV GITLAB_API_ENDPOINT="https://gitlab.com/api/v4"
ENV GITLAB_API_PRIVATE_TOKEN=""
ENV GITLAB_API_HTTPARTY_OPTIONS="{verify: true}"
ENV HOME=/home/ruby

RUN useradd \
	--home-dir ${HOME} \
	--create-home \
	--shell /bin/bash \
	--user-group \
	ruby

RUN gem install gitlab

COPY docker-gitlab-entrypoint /usr/local/bin

USER ruby
WORKDIR  ${HOME}
ENTRYPOINT ["docker-gitlab-entrypoint"]
CMD ["gitlab", "help"]
