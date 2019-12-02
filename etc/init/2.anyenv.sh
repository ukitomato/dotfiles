#!/bin/zsh

anyenv init
anyenv install --init
anyenv install jenv
anyenv install pyenv
anyenv install rbenv
anyenv install plenv
anyenv install nodenv
exec $SHELL -l

jenv enable-plugin export
exec $SHELL -l

jenv add $(/usr/libexec/java_home -v 1.8)
jenv add $(/usr/libexec/java_home -v 11)
