#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

_mkdocs() {
  if [ "${INPUT_STRICT:-}" == "true" ]; then
    set -- "$@" --strict
    echo "::debug::Strict mode enabled"
  fi

  mkdocs "$@"
}


main() {
  if [ "${GITHUB_ACTIONS:-}" != "true" ]; then
    # We are not being run by GitHub Actions.
    exec "$@"
    exit 1
  fi

  echo "::debug::Using config file: ${INPUT_CONFIGFILE}"

  _mkdocs build \
    --clean \
    --config-file "${INPUT_CONFIGFILE}"
}

main "$@"
