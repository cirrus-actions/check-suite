FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/cirruslabs/actions"
LABEL homepage="https://github.com/marketplace/cirrus-ci"
LABEL maintainer="Cirrus Labs"
LABEL "com.github.actions.name"="Cirrus CI"
LABEL "com.github.actions.description"="Checks that Cirrus CI Check Suite succeded"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

RUN apk --no-cache add jq

ENTRYPOINT (jq -r ".check_suite.app.name" "$GITHUB_EVENT_PATH" | grep -Eq "^Cirrus CI$") && \
           (jq -r ".check_suite.conclusion" "$GITHUB_EVENT_PATH" | grep -Eq "^success$")
