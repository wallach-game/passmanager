##dialog1=$(termux-dialog radio -t "Saving a new password" -v generate,"type password"  )
##option=$(echo "$dialog1" | jq -r ".index" )
 
option=$(termux-dialog radio -t "Saving a new password" -v generate,"type password" | jq -r ".index" )


if [ "$option" = "0" ]; then
    testPassword=$(openssl rand -base64 8)
else
    testPassword=$(termux-dialog text -t "Enter password" | jq -r ".text" )
fi
##testUsername=$(termux-dialog -t "Enter account name" )
testUsername=$(termux-dialog -t "Enter account name" | jq -r ".text")

pin=$(termux-dialog text -t "Enter PIN:" -n -p | jq -r ".text")

# Generate an encryption key using the passphrase
encryption_key=$(echo -n "$pin" | openssl enc -aes-256-cbc -pass pass:"$passphrase" -nosalt -base64)
encrypted_string=$(echo -n "$testPassword" | openssl enc -aes-256-cbc -pass "pass:$encryption_key" -nosalt -base64)

cd ~/passmanager/storage/
echo "$encrypted_string" > "$testUsername"

sleep 5
##
##pin=$(termux-dialog -t "Enter your PIN" -p -n )


