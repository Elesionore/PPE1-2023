#!/usr/bin/env bash

URLS=$1

lineno=1
while read URL
do
    response=$(curl     -I -L      "%{http_code}"   /dev/null $URL)
    encoding=$(curl     -I -L      "%{content_type}"    /dev/null $URL)
	echo    "$lineno\t$URL\t$response\t$encoding"
    lineno=$(expr $lineno + 1)
done < $URLS
