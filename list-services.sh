#!/usr/local/bin/zsh
ORIGINAL_TARGET=`cf target | awk '/Space:/{ print $2 }'`
ALL_SPACES=(`cf spaces | awk 'NR > 3'`)

for SPACE in $ALL_SPACES
do
	cf target -s $SPACE > /dev/null
	cf services | awk 'NR > 4';
done

cf target -s $ORIGINAL_TARGET > /dev/null