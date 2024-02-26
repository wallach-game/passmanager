dialog1=$(termux-dialog radio -t "Saving a new password" -v generate,"type password" )
option=$(echo "$dialog1" | jq -r ".index" )
echo "$option"
sleep 10
##
##pin=$(termux-dialog -t "Enter your PIN" -p -n )


