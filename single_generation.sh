#/usr/bin/env bash

echo 'cleaning files in qcloudicons'

rm -rf ./tmp_icons/*.png
rm -rf ./tmp_icons/*.puml

echo 'begin to copy shared pumls'


./create_sprites.sh -p ./tmp_icons -w 48 -h 48 -s Qcloud


echo "begin to copy files to main folders"

cp ./tmp_icons/*.puml ./dist
cp ./tmp_icons/*.svg ./qcloudicons 
cp ./tmp_icons/*.png ./qcloudicons 

echo "pumls are generated at directory ./dist"
