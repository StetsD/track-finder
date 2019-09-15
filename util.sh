#!/bin/bash

# util

function validate {
if [ -z $1 ]
then
        echo "Error: path is not set"
        exit 1
fi
}

