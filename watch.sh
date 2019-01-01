#!/bin/bash

echo "Watch build Purescript"
pulp --watch --then ./add-export.sh build --skip-entry-point --to purs.js
