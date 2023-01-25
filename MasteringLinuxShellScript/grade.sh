#!/bin/bash
if [ ! "$#" -eq 2 ]; then
    echo "Please insert <student> <your grade>"
    exit 2
fi

case "$2" in
    [A-C]) echo "$1 is good."
    ;;
    [D]) echo "$1 fight."
    ;;
    [E-F]) echo "see you last year"
    ;;
esac
