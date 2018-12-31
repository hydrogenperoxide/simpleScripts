#!/bin/bash
#Checks whether file 1 is newer or older than file 2
while :
do
  echo "Enter first filename (q to quit): "
  read FILENAME1
  if [ "$FILENAME1" == "q" ]; then
	break
  fi
  echo "Enter second filename (q to quit): "
  read FILENAME2
  if [ "$FILENAME2" == "q" ]; then
	break
  fi
  if [ "$FILENAME1" -nt "$FILENAME2" ]; then
        echo "$FILENAME1 is newer than $FILENAME2"
	break
  elif [ "$FILENAME1" -ot "$FILENAME2" ]; then
	  echo "$FILENAME1 is older than $FILENAME2"
	  break
  else
	  echo "Please try again"
  fi
done
