#!/bin/sh

mplayer $(cat luck.txt | grep $(shuf -i 1-500 -n 1))
