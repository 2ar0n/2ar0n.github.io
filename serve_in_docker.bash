#!/bin/sh

docker run --rm --volume=$PWD:/srv/jekyll -p 4000:4000  -it jekyll/builder:3.8 jekyll serve