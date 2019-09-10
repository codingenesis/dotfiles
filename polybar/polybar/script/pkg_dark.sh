#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo "%{F#acaccb}PAC%{F-} %{F#ffd872}$pac%{F-} %{F#acaccb}AUR%{F-} %{F#FFD872}$aur%{F-}"
else
    echo "%{F#acaccb}No Update%{F-}"
fi
