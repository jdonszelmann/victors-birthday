
YEAR_NUM=${YEAR#"year"}
NEXT_YEAR_NUM=$(($YEAR_NUM + 1))

echo "Switching to year $NEXT_YEAR_NUM"
su - "year$NEXT_YEAR_NUM" -c "clear; /bin/zsh"

