draw_progress_bar() {
    local progress=$1
    local length=$2
    local bar=""
    for ((i=0; i<length; i++)); do
        if [ $i -lt $progress ]; then
            bar+="#"
        else
            bar+=" "
        fi
    done
    echo -ne "Progress: [$bar]\r"
}

echo "Starting installation..."

draw_progress_bar 0 10



if [ -d ~/.shortcuts ]; then
    echo "Directory exists"
else
    mkdir -p ~/.shortcuts
fi

draw_progress_bar 1 10

pkg install -y git 
draw_progress_bar 3 10
pkg install -y jq
draw_progress_bar 7 10
cd ~
git clone https://github.com/wallach-game/passmanager.git
draw_progress_bar 10 10
echo "installation complete"
##
