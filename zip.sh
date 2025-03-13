#!/bin/zsh
# For macOS X:
if [ ! -d "physics2" ]; then
  mkdir physics2
fi
cp README.md physics2
cp physics2-code.dtx physics2
cp physics2-code.src.*.dtx physics2
cp physics2.ins physics2
cp physics2-code.pdf physics2
cp doc/physics2.tex physics2
cp doc/physics2-legacy.tex physics2
cp physics2.pdf physics2
cp doc/physics2-legacy.pdf physics2
cp doc/phy2docdef.tex physics2
COPYFILE_DISABLE=1 tar --no-acls --exclude ".DS_Store" --exclude "__MACOSX" -cvzf "physics2.tar.gz" "physics2"
rm -rf physics2
