#!/bin/zsh

anyenv init
anyenv install --init
exec $SHELL -l
anyenv install jenv
anyenv install pyenv
anyenv install rbenv
anyenv install plenv
anyenv install nodenv
exec $SHELL -l

jenv enable-plugin export
jenv add $(/usr/libexec/java_home -v 1.8)
jenv add $(/usr/libexec/java_home -v 11)

