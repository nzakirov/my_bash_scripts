#!/bin/bash

TEXT=$(xsel -o)

TRANSLATED=`echo "$TEXT" |  trans :ru -no-ansi -b`

#notify-send "Перевод:" "$TRANSLATED" -i accessories-dictionary --expire-time=10000
#yad --text="${TRANSLATED}" --image="dialog-information" --no-buttons --timeout=15
zenity --info  --text="$TRANSLATED" --title=""

echo "$TRANSLATED"| xsel --clipboard
