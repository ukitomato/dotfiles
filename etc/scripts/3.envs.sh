#!/bin/zsh
jenv enable-plugin export && \
jenv add $(/usr/libexec/java_home -v 1.8) && \
jenv add $(/usr/libexec/java_home -v 11) && \
jenv add $(/usr/libexec/java_home -v 15) && \
jenv global 15 && \
plenv install 5.32.0 && \
plenv global 5.32.0
rbenv install 2.7.2 && \
rbenv global 2.7.2
pyenv install 3.9.0 && \
pyenv install 3.8.6 && \
pyenv global 3.8.6 && \
nodenv install 12.19.0 && \
nodenv install 14.14.0 && \
nodenv install 15.0.1 && \
nodenv global 14.14.0 && \
goenv install 1.15.3 && \
goenv global 1.15.3
