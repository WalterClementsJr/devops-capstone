#!/usr/bin/env bash

COMMAND="hadolint"
OS=$(uname)
VERSION="v2.12.0"
URL="https://github.com/hadolint/hadolint/releases/download/${VERSION}/hadolint-${OS}-x86_64"

test -e ./bin/${COMMAND} ||
{
  wget -qO ./bin/${COMMAND} "${URL}"

  # set executable
  chmod +x ./bin/${COMMAND}
}

./bin/${COMMAND} --version
