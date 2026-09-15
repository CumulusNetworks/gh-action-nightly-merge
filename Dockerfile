FROM alpine:3.19@sha256:6baf43584bcb78f2e5847d1de515f23499913ac9f12bdf834811a3145eb11ca1

LABEL repository="http://github.com/robotology/gh-action-nightly-merge"
LABEL homepage="http://github.com/robotology/gh-action-nightly-merge"
LABEL "com.github.actions.name"="Nightly Merge"
LABEL "com.github.actions.description"="Automatically merge the stable branch into the development one."
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="orange"

# Pinned to versions available in alpine:3.19 at the time of writing. Alpine only
# retains a limited version history per branch, so these pins will need bumping
# periodically or the build will start failing once older builds age out.
RUN apk --no-cache add bash=5.2.21-r0 curl=8.14.1-r2 git=2.43.7-r0 jq=1.7.1-r0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
