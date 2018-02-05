#!/bin/sh

curl http://teacherluke.libsyn.com/rss \
	| grep http \
	| grep mp3 \
	| grep link \
	| sed -e 's/<link><!\[CDATA\[//g' \
	-e 's/\]\]><\/link>//g' \
	-e 's/[[:space:]]\+//g' \
	> luck.txt
