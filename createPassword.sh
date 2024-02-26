dialog1=$(termux-dialog radio -t "Saving a new password" -v generate,"type password" )
option=$(echo "$dialog1" | jq -r ".index" )



if [ "$option" == "0" ]; then
    echo "gene"
else
    echo "typo"
fi



sleep 10
##
##pin=$(termux-dialog -t "Enter your PIN" -p -n )


