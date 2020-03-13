#!/bin/zsh
jenv enable-plugin export
jenv add $(/usr/libexec/java_home -v 1.8) && \
jenv add $(/usr/libexec/java_home -v 11) && \
jenv global 11
plenv install 5.30.1 && \
plenv global 5.30.1
rbenv install 2.6.5 && \
rbenv global 2.6.5
pyenv install anaconda3-2020.02 && \
pyenv install 3.8.0 && \
pyenv global anaconda3-2020.02
conda init zsh
nodenv install 10.17.0 && \
nodenv install 12.13.1 && \
nodenv install 13.2.0 && \
nodenv global 12.13.1
