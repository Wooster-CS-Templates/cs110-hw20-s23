#! /bin/bash

if ! [[ -x filesum ]]; then
    echo "program filesum executable does not exist"
    exit 1
fi

tester/run-tests.sh -d tests-filesum
