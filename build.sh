#!/bin/zsh
# Usage:
#   Run `./build.sh`
#   or  `./build.sh +zip`
#   or  `./build.sh -test`

# Functions:
function build_pkg() {
  yes y | xetex physics2-code.dtx
}
function build_doc() {
  # $1: how many times to run xelatex
  for i in {1..$1}; do
    xelatex doc/physics2.tex
  done
}
function build_code_doc() {
  for i in {1..$1}; do
    xelatex physics2-code.dtx
    makeindex -s gind.ist physics2-code
  done
}

# Variables:
IF_RUN_ZIP=0
BUILD_DOC_TIMES=2

# Handling arguments:
if [ $# -ne 0 ]; then
  echo \"$1\"
  if [ "$1" = "+zip" ]; then
    IF_RUN_ZIP=1
  elif [ "$1" = "-test" ]; then
    BUILD_DOC_TIMES=1
  else
    echo "Unknown argument \"$1\"!"
    echo "Run ./build.sh instead."
  fi
fi

# Main:
# Build package:
build_pkg
# Build user documentation (userdoc can be regarded as the testfile):
build_doc $BUILD_DOC_TIMES
# Build code documentation:
if [ $BUILD_DOC_TIMES -gt 1 ]; then
  build_code_doc $BUILD_DOC_TIMES
fi
# zip
if [ $IF_RUN_ZIP -eq 1 ]; then
  zsh zip.sh
fi
