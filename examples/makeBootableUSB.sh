###!/bin/bash
HELP_STR="please provide location of .iso"
if [ "$#" -lt 1 ]; then
  echo $HELP_STR
else
  echo "`diskutil list`"
  echo "==============="
  echo "enter disk to eject"
  echo -e ">> \c"
  read word
  echo "ejecting: $word"
  echo "`diskutil unmountDisk $word`"
  echo "copying $1 to $word note this may take a while and there won't be a progress bar"
  echo "`sudo dd if=$1 of=$word bs=1m`"
fi
