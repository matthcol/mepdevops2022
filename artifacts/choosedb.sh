#!/bin/bash

# DB name in arg 1
DB=$1

CONFDIR=conf
CONF_BASENAME=application.properties
CONF_BASEPATH=${CONFDIR}/${CONF_BASENAME}
CONF_FILE_CHOSEN=${CONF_BASEPATH}-${DB}
if [ ! -e "$CONF_FILE_CHOSEN" ]
then
	echo "Error, no such configuration: ${CONFIG}"
	echo "Choose one of te following ones:"
	for f in ${CONFDIR}/${CONF_BASENAME}-*
	do
		n=${#CONF_BASEPATH}
		echo ${f:n+1}
	done
	exit -1
fi
CONF_LINK=$CONF_BASENAME
if [ -L "$CONF_LINK" ]
then
	echo "Remove previous link"
	rm "$CONF_LINK"
fi
if [ -e "$CONF_LINK" ]
then
	echo "Error: filename already exists but is not a link"
	exit -2
fi
ln -s "${CONF_FILE_CHOSEN}" "${CONF_LINK}"
