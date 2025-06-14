#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

./configure --prefix=${PREFIX} --enable-shared --without-guile --disable-dependency-tracking
make
make install
cp src/ctl-math.h ${PREFIX}/include

rm $PREFIX/lib/libctlgeom.a
