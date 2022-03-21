#!/bin/bash

while read EXTENSION; do
  echo_info "Installing VSCode Extension: $EXTENSION"
  codium --install-extension $EXTENSION
done < ~/.config/VSCodium/extensions.txt
