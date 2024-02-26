if [ -d ~/.shortcuts ]; then
    echo "Directory exists"
else
    mkdir -p ~/.shortcuts
fi

pkg install -y git 
pkg install -y jq

cd ~
git clone https://github.com/wallach-game/passmanager.git
