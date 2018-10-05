#!/bin/bash

ng build --prod --build-optimizer

rm -f ../../public/*.js
rm -f ../../public/*.css
rm -f ../../public/*.ico

cp dist/*.js ../../public/
cp dist/*.css ../../public/
cp dist/*.ico ../../public/
cp dist/index.html ../views/index.html