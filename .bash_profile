# start the ssh agent
ssh-add

# start ruby stuff
eval "$(rbenv init -)"

PATH=~/.rbenv/shims:/usr/local/mysql/bin:$PATH

export REPOS_DIR=~/Repos

# set up git autocompletion
if [ -f "${REPOS_DIR}"/git/git/contrib/completion/git-completion.bash ]; then
  source "${REPOS_DIR}"/git/git/contrib/completion/git-completion.bash 
fi
