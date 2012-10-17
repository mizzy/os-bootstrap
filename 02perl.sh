#!/bin/sh

if [ ! -f ~/perl5/perlbrew/bin/perlbrew ]; then
    curl -kL http://install.perlbrew.pl | bash
fi

versions="5.16.1"

for i in $versions; do
    perlbrew install perl-$i
done

perlbrew switch perl-`echo $versions|awk '{print $1}'`

perlbrew install-cpanm

cpanm --notest ack YAML Plagger 

