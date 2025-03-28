#!/bin/bash

if ! command -v hugo &>/dev/null; then
    printf "%s\n" "hugo not found or not in \$PATH"
    exit 1
fi

if test -f hugo.toml; then
    CNAME=$(grep 'baseURL' hugo.toml | awk -F'= ' '{print $2}' | tr -d '"' | sed 's/https\:\/\///g')
    if ! test "${CNAME}"; then
        printf "%s\n" "failed to get CNAME"
        exit 1
    fi
else
    printf "%s\n" "hugo.toml does not exist"
    exit 1
fi

if test -d docs/; then
    printf "%s\n" "found old published docs, removing"
    rm -rf docs/
fi

if hugo build --quiet; then
    printf "%s\n" "rebuilt docs"
else
    printf "%s\n" "failed to rebuild docs"
fi

printf "%s\n" "${CNAME}" > docs/CNAME
