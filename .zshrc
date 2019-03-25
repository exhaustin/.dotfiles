# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

eval "$(thefuck --alias)"

#-------------Aliases
# I am a fucking lazy person
alias f="open"
alias f.="f ."
alias fap="f -a"
alias psgrep="ps aux | grep"

#alias ls='LC_COLLATE=C ls -h --group-directories-first --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Configs
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias gitconfig="vim ~/.gitconfig"
alias tmuxconfig="vim ~/.tmux.conf"

# Virtualenv
alias activate='source venv/bin/activate'

# Utilities
alias matlab='/Applications/MATLAB_R2017a.app/bin/matlab -nodesktop'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

if [ -x "$(command -v fuck)" ]; then
	alias fk="fuck"
fi

if [ -x "$(command -v ffmpeg)" ]; then
	alias flac2mp3="for i in *.flac ;\ do\ ffmpeg -i "$i" -acodec libmp3lame -ab 320k $(basename "${i/.flac}").mp3\ sleep 60\ done"
fi

# Vim
alias vu='vim -u "~/.dotfiles/.vimrc"'

# Tmux
alias tmux='tmux -2'

#--------------------Variables
cmuunix='aswang@unix.andrew.cmu.edu'
cmushark='aswang@shark.ics.cs.cmu.edu'
isaac='aswang@isaac.ri.cmu.edu'
arthur='aswang@arthur.ri.cmu.edu'
descartes='aswang@descartes.ri.cmu.edu'
groot='aswang@iam-groot.ri.cmu.edu'
drax='aswang@iam-drax.ri.cmu.edu'
nrec='aswang@deeperthought'
acsi='instructor@mark1.andrew.cmu.edu'

#--------------------

# Path to your oh-my-zsh installation.
export ZSH=/Users/austinspwang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#--------------------Inital Commands
