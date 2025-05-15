#!/usr/bin/env bash

./node_modules/.bin/nbb nested/check.cljs
./node_modules/.bin/nbb check.cljs
NODE_PATH="$(pwd)/node_modules" ./node_modules/.bin/nbb ../check.cljs

npm run nbb -- nested/check.cljs
npm run nbb -- check.cljs
NODE_PATH="$(pwd)/node_modules" npm run nbb -- ../check.cljs
