cmake -S . -B build

vcpkg install
vcpkg export --output-dir=./ --raw

mv ./vcpkg-export-* ./vcpkg-export

cp ./build/vcpkg-manifest-install.log ./vcpkg-export/
cp ./vcpkg.json ./vcpkg-export/
