#!/usr/bin/env bash
#
# Creates a new TIL entry (an md with the correct time format)
# Author Tom Cowling <tom.cowling@gmail.com>

TIME_PREFIX=`date +%s`

echo "Whats the title for this?"
read ARTICLE_NAME_INPUT

ARTICLE_NAME=${ARTICLE_NAME_INPUT// /_}

TITLE=${TIME_PREFIX}_${ARTICLE_NAME}.md

echo "Create entry $TITLE"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) vim ${TITLE}; break;;
        No ) exit;;
    esac
done
