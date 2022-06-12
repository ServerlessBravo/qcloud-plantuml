#/usr/bin/env bash

echo 'cleaning files in dist'

mkdir -p dist
rm -rf ./dist/*.puml

echo 'cleaning files in qcloudicons'

rm -rf ./qcloudicons/*.png
rm -rf ./qcloudicons/*.puml

echo 'begin to copy shared pumls'

cp ./QcloudCommon.puml ./dist

./create_sprites.sh -p ./qcloudicons -w 48 -h 48 -s Qcloud

mv ./qcloudicons/*.puml dist/

echo "pumls are generated at directory ./dist"
