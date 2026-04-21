#!/bin/bash

gco() {
    if [ -z "$1" ]; then
        echo "Usage : gco '<message de commit>'"
        echo "Exemple : gco 'ajout de la fonction d installation'"
        return 1
    fi

    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        echo "Erreur : ce répertoire n'est pas un dépôt Git."
        return 1
    fi

    local branch
    branch=$(git rev-parse --abbrev-ref HEAD)

    local message="[$branch] $1"
    echo "Commit : $message"
    git commit -m "$message"
}
