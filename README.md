Homesick Deb
============

This package contains a set of configuration files to setup a system the
way i like it on debian with the support of homesick.

Installation
------------

There are several pre-requisites needed before you install these package:

For OSX Lion:
        
    brew install git bash bash-completion

For Debian:

    aptitude install git-core bash-completion

For all:

    sudo gem install homesick pry git-up

Now you are ready to go! You can clone the code of this repository and
get it running with the following command:

    homesick clone tbpro/homesick-deb && homesick symlink tbpro/homesick-deb

That's all, it's time to start a new shell! To update scripts from the
repository use these commands:

    homesick pull tbpro/homesick-deb && homesick symlink tbpro/homesick-deb

Currently there is no installation for rbenv and ruby-build, you've got
to trigger the update command manually:

    rbenv-update
