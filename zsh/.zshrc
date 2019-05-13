# Path to your oh-my-zsh installation.
export ZSH="/Users/jamesmulholland/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
export TERM="xterm-256color"
ZSH_THEME=""

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # zsh-syntax-highlighting
  yarn
)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='vim'
fi

export FZF_DEFAULT_COMMAND="ag -l --hidden -g '^(?!.*node_modules\/|.*dist\/|.*build).*$'"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias lf="lsof -i :"
alias c="clear"
alias fs="foreman start -f Procfile.development"
alias cpr="cd ~/proj/"
alias v="nvim"
alias dv="yarn dev"
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias venv="source venv/bin/activate"
# git
alias gche="git checkout"
alias gpul="git pull"
alias gbra="git branch"
# add Z
. /usr/local/Cellar/z/1.9/etc/profile.d/z.sh
# avoid clash with xcode ctags
alias ctags="`brew --prefix`/bin/ctags"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/Users/jamesmulholland/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /Users/jamesmulholland/.dot-files/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
