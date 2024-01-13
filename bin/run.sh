#! /bin/sh

FILE=hello && \
    && flx --static -o $FILE -c $FILE.flx 1>&2 \
    && ./$FILE