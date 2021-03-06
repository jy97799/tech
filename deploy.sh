#!/usr/bin/env bash

TMP_DIR=/tmp/blog/
ORIGIN_ADDRESS=git@github.com:jjyyjjyy/tech.git
ORIGIN_BRANCH=gh-pages
cd notes || return
mvn clean asciidoctor:process-asciidoc
rm -rf ${TMP_DIR} && mkdir -p ${TMP_DIR}
cp -r target/generated-docs/** ${TMP_DIR}
cd ${TMP_DIR} || return
git init
git remote add origin ${ORIGIN_ADDRESS}
git add .
git commit -m ":rocket: Update"
git checkout -b ${ORIGIN_BRANCH}
git checkout -b tmp
git branch -D ${ORIGIN_BRANCH}
git push origin --delete ${ORIGIN_BRANCH}
git checkout -b ${ORIGIN_BRANCH}
git push --set-upstream origin ${ORIGIN_BRANCH}
cd - || return
echo "${ORIGIN_BRANCH} sync successfully!"
