#! /bin/bash
git checkout ai
git commit -a -m 'update'
git push -u origin ai
npm run build
rm -rf ../leona-web/webroot/client/*
cp -r dist/* ../leona-web/webroot/client
cd ../leona-web
git checkout main
git add .
git commit -a -m 'update'
git push -u origin main
