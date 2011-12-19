Homesick Deb
============

This package contains a set of configuration files to setup a system the
way i like it on debian with the support of homesick.

Installation
------------

There are several pre-requisites needed before you install these package:

    aptitude install git-core bash-completion curl ruby rubygems
    sudo gem update --system
    sudo gem install homesick pry git-up

Now you are ready to go! You can clone the code of this repository and
get it running with the following command:

    homesick clone tbpro/homesick-deb && homesick symlink tbpro/homesick-deb

That's all, it's time to start a new shell! To update scripts from the
repository use these commands:

    homesick pull tbpro/homesick-deb && homesick symlink tbpro/homesick-deb

Currently there is no installation for rvm, you've got to trigger the install
command manually:

    bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
