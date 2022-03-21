#!/bin/bash

while read EXTENSION; do
  echo "Installing VSCode Extension: $EXTENSION"
  codium --install-extension $EXTENSION
done < ~/.config/VSCodium/extensions.txt
