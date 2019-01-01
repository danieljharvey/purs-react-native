#!/bin/bash

echo "Build Purescript"
pulp build --skip-entry-point --to purs.js

./add-export.sh
