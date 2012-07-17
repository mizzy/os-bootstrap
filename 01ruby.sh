#!/bin/sh

if [ ! -d ~/.rbenv ]; then
    cd
    git clone git://github.com/sstephenson/rbenv.git .rbenv
    exec $SHELL
fi

if [ ! -d ~/.rbenv/plugins ]; then
    mkdir -p ~/.rbenv/plugins
    cd ~/.rbenv/plugins
    git clone git://github.com/sstephenson/ruby-build.git
fi

versions="1.9.3-p194"

for i in $versions; do
    if [ ! -d ~/.rbenv/versions/$i ]; then
        rbenv install $i
    fi
done


rbenv global `echo $versions|awk '{print $1}'`


gem install bundler --no-ri --no-rdoc
gem install hub --no-ri --no-rdoc

exec $SHELL
