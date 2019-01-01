#!/bin/bash

pulp build --skip-entry-point --to purs.js

echo "exports.app = PS['Main'].app" >> purs.js

echo "great"
