#!/bin/bash

COLLECTIONS=(
    Waterdeep_Dungeon_of_the_Mad_Mage.xml
    WotC_2024+Legacy_2014.xml
    Curse_of_Strahd.xml
)

./build-collections.sh -2024 --validate "${COLLECTIONS[@]}"