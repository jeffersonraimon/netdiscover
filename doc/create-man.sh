#!/bin/bash

# Copyright 2015-2020 Joao Eriberto Mota Filho <eriberto@eriberto.pro.br>
# Create a manpage using txt2man command. Version 2.0, 2020-06-19.
# This file is part of txt2man package for Debian.
# This script can be used under BSD-3-Clause license.

#--------------------------------------------------------
# Don't change the following lines
TEST=$(txt2man -h 2> /dev/null)
[ "$TEST" ] || { echo -e "\nYou need to install txt2man, from https://github.com/mvertes/txt2man.\n"; exit 1; }

function create-man {
txt2man -d "$T2M_DATE" -t $T2M_NAME -r $T2M_NAME-$T2M_VERSION -s $T2M_LEVEL -v "$T2M_DESC" $T2M_NAME.txt > $T2M_NAME.$T2M_LEVEL
}
#--------------------------------------------------------

T2M_DATE="13 May 2025"
T2M_NAME=netdiscover
T2M_VERSION=0.20
T2M_LEVEL=8
T2M_DESC="active/passive ARP reconnaissance tool"
create-man
