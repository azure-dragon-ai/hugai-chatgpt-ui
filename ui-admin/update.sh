#! /bin/bash
git checkout ai
git commit -a -m 'update'
git push -u origin ai
npm run build:prod
rm -rf ../leona-web/webroot/admin/*
cp -r dist/* ../leona-web/webroot/admin
cd ../leona-web
git checkout main
git add .
git commit -a -m 'update'
git push -u origin main
