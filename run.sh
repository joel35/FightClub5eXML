#!/bin/bash

COLLECTIONS=(
    WotC_5.5e+Legacy_5e_WotC.xml
)

./build-collections.sh -5.5e --validate "${COLLECTIONS[@]}"