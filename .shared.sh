ssh-add --apple-use-keychain 
if test -f /Users/ana/.ssh/id_rsa_gh_prod; then
  ssh-add --apple-use-keychain /Users/ana/.ssh/id_rsa_gh_prod
fi

export EDITOR=vim

eval $(/opt/homebrew/bin/brew shellenv)

#############################
# Bookmarks with apparix 
#############################
# https://github.com/micans/apparix/
# Requires copying the file https://github.com/micans/apparix/blob/main/.bourne-apparix
# into my home directory
if [ -f ~/.bourne-apparix ]; then
  source ~/.bourne-apparix
fi



# export variables and set up aliases for gh+ts development
# source ~/.gh_ts_dev.sh


############################
# My aliases
###########################



#############################
# Adding things to the PATH
#############################

# Adding Ruby the PATH
PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export PATH

############################
# iterm2 shell integration
############################
# in a new machine this will require installing iterm2 and runnning
#      > curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
