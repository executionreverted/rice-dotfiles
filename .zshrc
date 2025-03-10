# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
source /opt/homebrew/opt/nvm/nvm.sh
nvm use node
clear

alias f="fastfetch"
alias ft="fortune | cowsay -f \$(node -e \"var c='$(cowsay -l)'.split('  ');console.log(c[Math.floor(Math.random() * c.length)])\") | lolcat --seed $(node -e 'console.log(Math.floor(Math.random() * 100000))') --spread 1.0 --animate --speed 100"

if [[ $KITTY_WINDOW_ID == "3" ]]; then
  fortune | cowsay -f $(node -e "var c='$(cowsay -l)'.split('  ');console.log(c[Math.floor(Math.random() * c.length)])") | lolcat --seed $(node -e 'console.log(Math.floor(Math.random() * 100000))') --spread 1.0 --animate --speed 100
else
  :
fi

if [[ $KITTY_WINDOW_ID == "1" ]]; then
  f
else
  :
fi

if [[ $KITTY_WINDOW_ID == "4" ]]; then
  krabby random
else
  :
fi

if [[ $KITTY_WINDOW_ID == "2" ]]; then
  yazi
else
  :
fi


# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source ~/.oh-my-zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k" # set by `omz`
ZSH_THEME="catppuccin"
CATPPUCCIN_FLAVOR="mocha"
CATPPUCCIN_SHOW_TIME=true
ZSH_COLORIZE_STYLE="colorful"
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
#plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# eval "$(starship init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-autocomplete
  starship
  web-search
  colorize
  catimg
  ohmyzsh-full-autoupdate)

# get machine's ip address
alias ip="ipconfig getifaddr en0"


# edit global zsh configuration
alias zshconfig="vim ~/.zshrc"
# reload zsh configuration
alias zshsource="source ~/.zshrc"
# reload zsh configuration
alias ohmyzsh="cd ~/.oh-my-zsh"

# navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# edit global ssh configuration
alias sshconfig="vim ~/.ssh/config"

# edit global git configuration
alias gitconfig="vim ~/.gitconfig"

# git aliases
alias gits="git status"
alias gitd="git diff"
alias gitl="git lg"
alias gita="git add ."
alias gitc="cz commit"

alias dev="cd /Users/canersevince/Desktop/Dev"
# type sublime . to open current folder in Sublime Text
#alias sublime="/Applications/Sublime\ 
#Text.app/Contents/SharedSupport/bin/subl --new-window $@"

alias loc="npx sloc --format cli-table --format-option head --exclude 
'build|\.svg$\.xml' ./"

# load zsh-completions
autoload -U compinit && compinit


# use starship theme (needs to be at the end)
# eval "$(starship init zsh)"
#source /Users/canersevince/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh  
#source /Users/canersevince/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source "/Users/canersevince/Library/Application Support/pear/bin"
# bun completions
#[ -s "/Users/canersevince/.bun/_bun" ] && source "/Users/canersevince/.bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

omz plugin load web-search
omz plugin load colorize
#omz plugin load catimg
#catimg -w 205  ./Documents/welcome.jpg
alias cl="printf '\033[2J\033[3J\033[1;1H'"


alias safari="open -a /Applications/Safari.app"
alias viva="open -a /Applications/Vivaldi.app"
alias opera="open -a /Applications/Opera.app"
alias td="open -a /Applications/ToucherDesigner.app"
alias spotify="open -a /Applications/Spotify.app"


export PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"


export GOPATH=~/go 
export PATH=$PATH:$(go env GOPATH)/bin


alias txk="tmux kill-server"
alias lgt="lazygit"
