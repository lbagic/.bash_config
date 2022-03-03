ssh-gen() {
  ssh-keygen -t rsa -b 4096 -C $1 -f ~/.ssh/$1 -q -N ""
}
# alias ssh-gen="ssh-keygen -t rsa -b 4096 -f ~/.ssh/ -C"