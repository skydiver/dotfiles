#!/bin/bash

# Install VS Code extensions
if [ -f "extensions.list" ]; then
    while IFS= read -r extension
    do
        code --install-extension $extension
    done < extensions.list
fi
