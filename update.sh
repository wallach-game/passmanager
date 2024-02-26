
exec &>log.txt

cd ~
cd passmanager 
git checkout .
git pull
chmod +x *.sh
cd ~
rm ~/.shortcuts/passmanager -drfv
mkdir ~/.shortcuts/passmanager
cd passmanager 
cp *.sh ~/.shortcuts/passmanager
