#!/usr/bin/env bash

OS=$(uname)
VERSION="stable"
ARCH=$(uname -m)
COMMAND="shellcheck"
URL="https://github.com/koalaman/shellcheck/releases/download/stable/shellcheck-${VERSION}.${OS}.${ARCH}.tar.xz"

test -e ./bin/${COMMAND} ||
{
  wget -qO- "${URL}" | tar xJC bin
  mv ./bin/${COMMAND}-${VERSION}/${COMMAND} ./bin
  chmod +x ./bin/${COMMAND}
  rm -r ./bin/${COMMAND}-${VERSION}
}

./bin/${COMMAND} --version
