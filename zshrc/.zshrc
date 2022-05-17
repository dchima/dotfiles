# Lines configured by zsh-newuser-install
setopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/chima/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%{\e[0m%}' # tell zsh these are zero length strings
COLOR_GIT=$'%{\e[38;5;33m%}' 
setopt PROMPT_SUBST

export PROMPT='🎈${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} '; 
# export PS1;
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="/usr/local/sbin:$PATH"

#sources
#
#source auto suggestions 
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


export FREEDESKTOP_MIME_TYPES_PATH=/Users/chima/web/work/helicarrier/utilities/freedesktop.org.xml

