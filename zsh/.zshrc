#==============================================================================#
# options documentation:                                                       #
#     http://tinyurl.com/msuawhd                                               #
#==============================================================================#

#-- Changing Directories -------------------------------------------------------

# don't require `cd` to change directories
setopt auto_cd

#-- Completion -----------------------------------------------------------------

setopt auto_menu
unsetopt menu_complete

#-- Expansion and Globbing -----------------------------------------------------

# none

#-- History --------------------------------------------------------------------

# set the location of the history file
HISTFILE=~/.zsh-history
# the maximum number of events stored in the internal history list
HISTSIZE=1000
# the maximum number of history events to save in the history file
SAVEHIST=1000
# incrementally add events to $HISTFILE instead of waiting for the shell to exit
setopt inc_append_history
# do not enter event if it is a duplicate of the previous event
setopt hist_ignore_dups
# do not enter command lines into the history if they begin with a blank
setopt hist_ignore_space

#-- Initialization -------------------------------------------------------------

# none

#-- Input / Output -------------------------------------------------------------

# none

#-- Job Control ----------------------------------------------------------------

# none

#-- Prompting ------------------------------------------------------------------

setopt prompt_subst

#-- Scripts and Functions ------------------------------------------------------

# none

#-- Shell Emulation ------------------------------------------------------------

# none

#-- Shell State ----------------------------------------------------------------

# none

#-- ZLE ------------------------------------------------------------------------

# enable vi emulation for zsh line editing
bindkey -v

# other key bindings
bindkey "^R" history-incremental-search-backward

#==============================================================================#
# miscellaneous                                                                #
#==============================================================================#

#-- compinstall ----------------------------------------------------------------

# see: https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

zstyle :compinstall filename '/Users/sethlopez/.zshrc'
autoload -Uz compinit
compinit

#-- color ----------------------------------------------------------------------

autoload -U colors
colors

#==============================================================================#
# sources                                                                      #
#==============================================================================#

source $HOME/.exports
source $HOME/.aliases
source $HOME/.zsh-prompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
