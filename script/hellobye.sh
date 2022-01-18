#!/bin/sh

RES=$((RANDOM - RANDOM))

[ $RES -ge 0 ] && bye || hello
