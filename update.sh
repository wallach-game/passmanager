cd ~
##mrdko
cd passmanager 
git checkout .
git pull -v 
chmod +x *.sh
rm /.shortcuts/passmanager/*.sh -fv
mkdir ~/.shortcuts/passmanager
mkdir ./storage/
cp *.sh ~/.shortcuts/passmanager
