#!/bin/bash
distr=`curl -silent https://www.apache.org/dist/jena/binaries/ | perl -ne '/href="(jena-fuseki-\d\.\d\.\d)-distribution.tar.gz"/ && print $1'`
wget --quiet https://www.apache.org/dist/jena/binaries/$distr-distribution.tar.gz -O- | tar -zx --strip-components 1 -C /opt/fuseki/ $distr
