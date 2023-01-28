#!bin/bash
if [ "$PWD" != "$HOME" ] ; then
    cd "$HOME"
    exit 1
fi
echo "Well come back!"
exit 0
