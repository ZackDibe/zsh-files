alias ls='ls --color=always'
alias ll='ls -lha'
alias l='ls -lh'
alias cp='cp -v'
alias ne='emacs -nw'
alias m='make'
alias mr='make re'

# Create a timestamp'd note in ~/Notes
alias note='mkdir -p ~/Notes/$(date +%m-%d-%Y) && emacs -nw ~/Notes/$(date +%m-%d-%Y)/note_$(date +%m-%d-%Y_%H:%M:%S).md'

# Topcoder
alias topcoder='javaws -Xignoreheaders -headless ~/.ContestAppletProd.jnlp&'

# mount partitions
alias ddext='sudo mount -t ntfs-3g /dev/sdb1 ~/DDext';

# edit zshrc
alias ezsh='emacs -nw ~/Projects/GitHub/zsh-files/aliases/aliases.zsh && antigen update && source ~/.zshrc';

alias wchat='weechat-curses';
alias ocaml='rlwrap ocaml';
alias sshot='xwd -root | convert - capture.png';

alias recordDesktop='recordmydesktop --no-cursor --on-the-fly-encoding';

# M:tG
alias playmtg='wine ~/Windows/Program\ Files\ \(x86\)/Cockatrice/cockatrice.exe&'
alias mvdraft="mv Downloads/draft.cod Windows/Documents\ and\ Settings/Mawuena/AppData/Local/Cockatrice/Cockatrice/decks"

alias canop='sudo su - canopsis'

# Enable double screen
alias dscreen='xrandr --output HDMI3 --mode 1920x1080 --pos 0x0 --output DP1 --mode 1920x1080 --pos 1920x0'

alias dkblaptop='disable_device keyboard AT'
alias ekblaptop='enable_device keyboard AT'

alias gir='grep -Ir'

# Python
alias ipy='ipython'
alias py='python'
alias ve='source env/bin/activate'

# ......
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'
alias .........='cd ../../../../../../../../'
alias ..........='cd ../../../../../../../../../'
alias ...........='cd ../../../../../../../../../../'
alias ............='cd ../../../../../../../../../../../'

# ZSH Global Aliases
alias -g L=' | less'
alias -g T=' | tail -20'
alias -g NUL=' > /dev/null 2>&1'

EDITOR=emacs
BROWSER=google-chrome

# Extensions
alias -s avi=vlc
alias -s html=$BROWSER
alias -s pdf=xpdf
alias -s txt=$EDITOR
alias -s text=$EDITOR

# Images
alias -s png=feh
alias -s jpeg=feh
alias -s jpg=feh
alias -s gif=feh

# Source Extensions
alias -s hs=$EDITOR
alias -s c=$EDITOR
