#!/usr/bin/env bash
set -euo pipefail

function test() {
    rm libhelloworld.a
    rm -rf target

    gcc -c $1.c
    ar rcs libhelloworld.a $1.o

    cargo run --release
}

test "lib"
test "lib2"
