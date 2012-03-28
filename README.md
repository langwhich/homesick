Homesick
========

This package contains a set of configuration files to setup a system the
way we like it on debian with the support of homesick.

Installation
------------

Login as root user on the debian machine and execute the following commands

    apt-get install git-core bash-completion curl ruby rubygems
    REALLY_GEM_UPDATE_SYSTEM=1 gem update --system
    gem install homesick pry hirb --no-ri --no-rdoc

Now you are ready to go! You can clone the code of this repository and
get it running with the following command:

    homesick clone Langwhich/homesick && homesick symlink Langwhich/homesick

That's all, it's time to start a new shell! To update scripts from the
repository use these commands:

    homesick pull Langwhich/homesick && homesick symlink Langwhich/homesick
