FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/cirrus-actions/check-suite"
LABEL homepage="https://github.com/marketplace/cirrus-ci"
LABEL maintainer="Cirrus Labs"
LABEL "com.github.actions.name"="Check Suite"
LABEL "com.github.actions.description"="Checks that a check suite has succeded"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

RUN apk --no-cache add jq

ENTRYPOINT ( \
             (jq -r ".check_suite.app.name" "$GITHUB_EVENT_PATH" | grep -Eq "^$APP_NAME$") && \
             (jq -r ".check_suite.conclusion" "$GITHUB_EVENT_PATH" | grep -Eq "^success$") \
           ) || exit 78
