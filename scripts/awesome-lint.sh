#!/usr/bin/env bash
# awesome-lint asks git for the current branch's remote and aborts on a branch
# that has no upstream yet. Point such a branch at origin for this process only.
set -euo pipefail

branch=$(git branch --show-current)
if [ -n "$branch" ] && ! git config --get "branch.$branch.remote" >/dev/null 2>&1; then
  export GIT_CONFIG_COUNT=1
  export GIT_CONFIG_KEY_0="branch.$branch.remote"
  export GIT_CONFIG_VALUE_0=origin
fi

exec awesome-lint
