# start the ssh agent
ssh-add --apple-use-keychain 
if test -f /Users/ana/.ssh/id_rsa_gh_prod; then
  ssh-add --apple-use-keychain /Users/ana/.ssh/id_rsa_gh_prod
fi

PATH=~/.rbenv/shims:/usr/local/mysql/bin:$PATH

export REPOS_DIR=~/Repos

# set up git autocompletion
if [ -f "${REPOS_DIR}"/git/git/contrib/completion/git-completion.bash ]; then
  source "${REPOS_DIR}"/git/git/contrib/completion/git-completion.bash 
fi

# export variables and set up aliases for gh+ts development
source ~/.gh_ts_dev.sh

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
