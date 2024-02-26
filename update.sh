cd ~
cd passmanager 
git checkout .
git pull
chmod +x *.sh
cd ~
rm ~/.shortcuts/passmanager -dfv
mkdir ~/.shortcuts/passmanager
cp *.sh ~/.shortcuts/passmanager
