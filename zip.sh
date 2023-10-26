# For macOS X:
mkdir physics2
cp -r ./README.md ./physics2
cp -r ./physics2-code.dtx ./physics2
cp -r ./physics2.ins ./physics2
cp -r ./physics2-code.pdf ./physics2
cp -r ./doc/physics2.tex ./physics2
cp -r ./doc/physics2-legacy.tex ./physics2
cp -r ./doc/physics2.pdf ./physics2
cp -r ./doc/physics2-legacy.pdf ./physics2
cp -r ./doc/phy2docdef.tex ./physics2
tar --exclude '.DS_Store' --exclude '__MACOSX' -cvzf "physics2.tar.gz" "./physics2"
rm -rf ./physics2
