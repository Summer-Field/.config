# DEFAULT_USER
DEFAULT_USER="Field"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

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
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="ture"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git 
        zsh-autosuggestions
        catimg
        thefuck
				docker
        )

source $ZSH/oh-my-zsh.sh
# zsh-syntax-highlight 
# mac intel
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# mac m2 pro
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
         export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi
# fzf configuration
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohhmyzsh="mate ~/.oh-my-zsh"
#
# alias ra="ranger"
#source ~/.oh-my-zsh/plugins/incr/incr-0.2.zsh
#opt for rm: notify when rm
# alias rm="rm -i"
# alias fresh="source /Users/Field/.zshrc"
alias ra="joshuto"
alias s="neofetch;source ${HOME}/.zshrc"
alias cow="cowsay"

# colorls
alias ls="colorls --dark"
alias ll="colorls -ll --dark"
alias la="colorls -la --dark"
alias lc='colorls -lA --sd --dark'

# use nvim as default instead of vim
alias vim="nvim"
# the setting of kubectl
alias k='kubectl'
# kubectl get ...
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgs='kubectl get secret'
# kubectl apply
alias ka='kubectl apply -f'
#kubectl describe
alias kd='kubectl describe'
#kubectl delete
alias kdf='kubectl delete -f'
# RANGER_LOAD_DEFAULT_RC FALSE
# KUBECTL_EDITOR_SET
EDITOR="nvim"
KUBE_EDITOR="nvim"
# quick edit .zshrc
alias ezr="vim ${HOME}/.zshrc"
# fzf's dragula theme
FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
# typora
alias typora="open -a typora"
alias dtypora="pkill tpora"
# sublime
alias sublime="open -a Sublime\ Text"
alias dsublime="pkill Sublime\ Text"
# QQ
alias qq="open -a QQ"
alias QQ="open -a QQ"
alias dqq="pkill QQ"
# WeChat
alias wechat="open -a WeChat"
alias Wechat="open -a WeChat"
alias dwechat="pkill WeChat"
# Lark
alias lark="open -a Lark"
alias Lark="open -a Lark"
alias dlark="pkill Lark"
# tencent cloud server
alias server="ssh -i ${HOME}/.ssh/field field@124.222.95.180"
alias server_root="ssh root@124.222.95.180"
# # ranger
# alias ra="python3 /usr/local/bin/ranger"
# alias ranger="python3 /usr/local/bin/ranger"
# python
alias python="python3"
# csapp_env
alias csapp="ssh root@127.0.0.1 -p 7777"
alias lab2="docker attach csapp_lab2_env"
# docker
alias container="open -a Docker"
alias dcontainer="pkill Docker"
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
# colorful cat ^_^ 
alias cat='ccat'
# netease
alias net='open /Applications/NeteaseMusic.app'
alias dnet='pkill NeteaseMusic'
# cs144
alias cs144="ssh cs144@192.168.64.2"
# gitignore
function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ARM silicon gem env set up
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Rust cargo env setup
export PATH=$HOME/.cargo/bin:$PATH
