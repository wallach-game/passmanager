termux-toast -s "Saving a new password"
dialog1=$(termux-dialog radio -v generate,type )
option=echo "$dialog1" | jq -r ".index"
echo "$option"
sleep 10
##
##pin=$(termux-dialog -t "Enter your PIN" -p -n )


