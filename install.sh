if [ -d ~/.shortcuts]; then
    echo "dir exists"
else
    mkdir ~/.shortcuts

pkg install git 
pkg install jq
cd ~
git clone https://github.com/wallach-game/passmanager.git