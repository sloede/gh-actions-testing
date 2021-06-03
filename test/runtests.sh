#!/bin/bash
# set -eo pipefail

if [[ ! -d "src" ]]; then
  echo "ERROR: must be run from root directory" >&2
  exit 1
fi

EXIT_CODE=0

src/hello
if [[ $? == 0 ]]; then
  echo "PASS: hello: zero exit code"
else
  echo "FAIL: hello: non-zero exit code"
  EXIT_CODE=1
fi


echo "Testing bad..."
src/bad
if [[ $? != 0 ]]; then
  echo "PASS: non-zero exit code for 'bad'"
else
  echo "FAIL: zero exit code for 'bad'"
  EXIT_CODE=1
fi

if [[ $EXIT_CODE == 0 ]]; then
  echo "All tests have passed."
  exit 0
else
  echo "Some tests have failed."
  exit $EXIT_CODE
fi
