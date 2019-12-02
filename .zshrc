eval "$(anyenv init -)"
eval "$(pyenv init -)"
eval "$(jenv init -)"
eval "$(nodenv init -)"
eval "$(rbenv init -)"
eval "$(plenv init -)"

alias gcloud='docker run --rm -ti --volumes-from gcloud-config -v $(pwd):/working -w /working ukitomato/google-cloud-sdk'