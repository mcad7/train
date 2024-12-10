#!/bin/bash

# Sprawdzenie, czy 'act' jest zainstalowany
if ! command -v act &>/dev/null; then
    echo "Narzędzie 'act' nie jest zainstalowane. Instalacja..."
    # Dla macOS (przy użyciu Homebrew)
    brew install act
    # Dla systemów Linux (przy użyciu apt)
    # sudo apt install act
fi

# Uruchomienie workflow z pliku train.yml
act --container-architecture linux/amd64 workflow_dispatch -W .github/workflows/train.yml
