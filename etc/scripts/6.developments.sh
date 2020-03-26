#!/bin/zsh
cd && \
mkdir "Dropbox/Developments"
cd Dropbox/Developments && \
mkdir Dockers IPLAB LaTeX Lectures StudioProjects OSS Web Works Utilities && \
cd Dockers && \
git clone git@github.com:ukitomato/docker-google-cloud-sdk.git && \
git clone git@github.com:ukitomato/docker-latex.git && \
git clone git@github.com:ukitomato/docker-mbed.git && \
cd .. && cd IPLAB && \
mkdir codes web papers teams && \
cd codes && \
git clone git@github.com:ukitomato/bluetooth-serial-android-sample.git && \
git clone git@github.com:ukitomato/on-wirst-recognition.git && \
git clone git@github.com:ukitomato/on-wirst-recognition.git on-wirst-recognition-python && \
cd .. && cd web && \
git clone git@github.com:iplab-ubiquitous/IPLAB_WEB.git && \
git clone git@github.com:iplab-ubiquitous/YukiYamato.git && \
cd .. && cd papers && \
git clone git@github.com:iplab-ubiquitous/paper-AVI2020-yamato.git && \
git clone git@github.com:iplab-ubiquitous/bachelor-thesis-yamato.git && \
cd .. && cd teams && \
mkdir mask && \
cd mask && \
git clone git@github.com:iplab-ubiquitous/paper_HCII2020_Mask.git && \
git clone git@github.com:iplab-ubiquitous/project_mask.git && \
cd .. && cd .. && \
cd .. && cd OSS && \
git clone git@github.com:ukitomato/your-mac-dict.git && \
cd .. && cd Web && \
git clone git@github.com:ukitomato/portfolio.git && \
git clone git@github.com:ukitomato/ukitomato.github.io.git && \
cd .. && cd Utilities && \
git clone git@github.com:ukitomato/dotfiles.git && \
cd .. && cd LaTeX && \
git clone git@github.com:ukitomato/LaTeX.git && \
git clone git@github.com:ukitomato/latex-template.git && \
cd
