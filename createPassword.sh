termux-toast "Saving a new password"
option=$(termux-dialog radio -t "Choose option" -v generate, "type password"
| jq -r ".index")
##pin=$(termux-dialog -t "Enter your PIN" -p -n )

