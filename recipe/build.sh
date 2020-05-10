#!/bin/bash

./configure --prefix=${PREFIX} --enable-shared --without-guile --disable-dependency-tracking
make
make install
cp src/ctl-math.h ${PREFIX}/include

rm $PREFIX/lib/libctlgeom.a
