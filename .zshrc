# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/heider/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="heider-clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_BASE=/usr/local/opt/fzf
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  #fzf
  git
  mvn
  gradle
  docker
  zsh-autosuggestions
  macos
  zsh-syntax-highlighting
  kubectl
  zsh-interactive-cd
  tmux
)

source $ZSH/oh-my-zsh.sh



# User configuration

# source homebrew
export PATH=/opt/homebrew/bin:$PATH

# custom bins
export PATH=/Users/heider/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

## macvim config START
mvim() {
  open -a "MacVim" "$@" ;
}
## macvim config END


alias cs="cd ~/sources"
alias csd="cd ~/sources/daas"
alias clearidea="rm -rf .idea && rm **/*.iml"
alias vim="nvim"
alias c="clear"
export EDITOR=nvim


##
# managing local secrets 
#
# local development secrets 
LOCAL_SECRETS=".local_secrets"

if [ -f "$LOCAL_SECRETS" ]; then
    source $LOCAL_SECRETS
    export SPRING_DATASOURCE_USERNAME=$DATABASE_USER
    export SPRING_DATASOURCE_PASSWORD=$DATABASE_PASSWORD

    export DATABASE_ANALYTICS_USERNAME=$DATABASE_USER
    export DATABASE_ANALYTICS_PASSWORD=$DATABASE_PASSWORD

    export BINDOC_ANALYTICS_DB_USERNAME=$DATABASE_USER
    export BINDOC_ANALYTICS_DB_PASSWORD=$DATABASE_PASSWORD

    export BINDOC_USER_DATA_DB_USERNAME=$DATABASE_USER
    export BINDOC_USER_DATA_DB_PASSWORD=$DATABASE_PASSWORD

    export BINDOC_MAPBOX_ACCESS_TOKEN=$MAPBOX_TOKEN

    export PGUSER=$DATABASE_USER
    export PGPASSWORD=$DATABASE_PASSWORD
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/heider/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/heider/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/heider/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/heider/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
