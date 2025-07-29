#!/bin/bash

# Exit if anything errors
set -e

source doc/version.env
export SPEC_VERSION

source config.sh

docker pull docker.sdlocal.net/csvw/metadata2rst:multiplatform
docker pull logicly/sphinx-html2pdf:production

docker run --rm -v "$(pwd):/mnt/cwd" docker.sdlocal.net/csvw/metadata2rst:multiplatform \
  --meta="${METADATA_FILE}"

# make example zip and xlsx Files
echo "Making example files"
pushd .
cd doc/_static/example-files
rm -fv *.zip
zip YES-INVITATION-1-0-client-completed-treatment.zip client-completed-treatment/*
popd

# make zip file
scripts/metadata2zip.sh
# mv new zip to data-specification folder
mv pmhcmds-yes-invitation-spec-meta.zip doc/_static/

pushd .
cd doc

rm -rf _data build
if [[ -e ../data  ]]; then
    cp -rf ../data _data
    echo "Copied data directory."
fi

GIT_VERSION=$(git describe --tags --always)

echo "Building PDF"
docker compose run \
  --build \
  -e GIT_VERSION \
  --rm sphinx \
  make singlehtml

popd

echo "Optimising images"
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  --workdir /mnt/workdir/doc/build/singlehtml/_images \
  logicly/sphinx-html2pdf:production \
  find . -name *.png -exec pngquant --force --output {} 8 {} \;

docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  logicly/sphinx-html2pdf:production \
  /mnt/workdir/scripts/make-pdf.pl \
  --spec-name "${SPEC_NAME}-${SPEC_VERSION}" \
  --doc-dir   "/mnt/workdir/doc"

pushd .
cd doc

docker compose run \
  -e GIT_VERSION \
  --rm sphinx \
  make html

popd
