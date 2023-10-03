#!/bin/bash

mkdir ~/.mozilla/firefox/Hardened
curl -o user.js https://codeberg.org/Narsil/user.js/raw/branch/main/desktop/user.js
mv user.js ~/.mozilla/firefox/Hardened/user.js
