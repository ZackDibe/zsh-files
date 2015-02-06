#
# Functions
#

# Automatically run ls when cd-ing into a directory
function cd() {
    builtin cd $* && ls;
}

#Get IP
function ip-addr() {
    wget -qO- http://ipecho.net/plain
    echo
}

# Run a command or multiple commands without saving it in the $HISTFILE
function incognito() {
    if [ -z $EDITOR ]; then
        EDITOR=vim
    fi

    # Create temp for storing commands
    TEMPFILE=`mktemp -q incognito.XXXXXXXX`

    # Prompt for commands, only run if successful
    $EDITOR $TEMPFILE || {
        echo "Invalid return on the editing"
        return
    }

    # Run the script
    sh $TEMPFILE

    # Clean everything up
    rm -f $TEMPFILE
}

# uncompress depending on extension...
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)
                tar xvjf $1;;
            *.tar.gz)
                tar xvzf $1;;
            *.bz2)
                bunzip2 $1;;
            *.rar)
                unrar x $1;;
            *.gz)
                gunzip $1;;
            *.tar)
                tar xvf $1;;
            *.tbz2)
                tar xvjf $1;;
            *.tgz)
                tar xvzf $1;;
            *.zip)
                unzip $1;;
            *.Z)
                uncompress $1;;
            *.7z)
                7z x $1;;
            *)
                echo "'$1' cannot be extracted via >extract<";;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# wifi
hookme () {
    sudo ifdown wlan0;sudo ifup wlan0=$1;
}

# screen brightness script
bright () {
    sudo echo -n $1 > /sys/class/backlight/acpi_video0/brightness
}

install () {
    sudo aptitude install $1
}

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# receive netcat file transfer
receive () {
    nc -l -p $1;
}

getdeck () {
    decktocod $1;
}

ff () {
    find $1 -name $2
}

disable_device () {
    id_device=$(xinput --list |
        grep -E "$1.*$2|$2.*$1" |
        grep -oE "id=[0-9]+" |
        cut -d '=' -f2)
    xinput set-int-prop $id_device "Device Enabled" 8 0
}

enable_device () {
    id_device=$(xinput --list |
        grep -E "$1.*$2|$2.*$1" |
        grep -oE "id=[0-9]+" |
        cut -d '=' -f2)
    xinput set-int-prop $id_device "Device Enabled" 8 1
}

# Install packages from dpkg-query -l output
install_packages () {
    sudo apt-get install $(cat $1 | cut -d ' ' -f 3 | tr '\n' ' ')
}
