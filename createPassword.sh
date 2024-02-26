termux-toast -s "Saving a new password"
option=$(termux-dialog radio -t "Choose option" -v generate, "type password" | jq -r ".index")
echo "$option"
sleep 10
##
##pin=$(termux-dialog -t "Enter your PIN" -p -n )


