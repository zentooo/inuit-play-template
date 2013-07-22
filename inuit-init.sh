#!/bin/sh

set -e

rm -rf /tmp/inuit-template
rm -rf ./public/stylesheets
git clone --recursive git@github.com:csswizardry/inuit.css-web-template.git /tmp/inuit-template
mv /tmp/inuit-template/css ./public/stylesheets
mkdir ./public/stylesheets/ui

echo ''
echo ''
echo ''
echo '========================================================='
echo 'Put your own .scss codes under ./public/stylesheets/ui/'
echo ''
echo 'Add this link element to your app/view/main.scala.html:'
echo '<link rel="stylesheet" media="screen" href="@routes.Assets.at("stylesheets/style.min.css")">'
echo ''
echo 'Run ./watch on ./public/stylesheets/ on local development'
echo '========================================================='
