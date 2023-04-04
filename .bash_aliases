# ls
if [[ $(uname -s) == Linux ]]
then
    alias ls='LC_COLLATE=C ls -h --group-directories-first --color=auto'
else
    alias ls='ls -hG'
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Git
alias gitbranchclean="git branch -vv | grep ': gone]' | grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -D"

# Sudo with aliases
alias sudo='sudo '

# Vim
alias vu='vim -S ~/.dotfiles/.vurc'
alias vudiff='vimdiff -S ~/.dotfiles/.vurc'

# Tmux
alias tmux='tmux -2'

# Configs
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias gitconfig="vim ~/.gitconfig"
alias tmuxconfig="vim ~/.tmux.conf"

# iPdb
alias pythondb='python -m ipdb -c continue'
alias ipythondb='ipython -m ipdb -c continue'

# Virtualenv
alias activate='source venv/bin/activate'

# Matlab
alias matlab='/Applications/MATLAB_R2017a.app/bin/matlab -nodesktop'
