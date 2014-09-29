#!/bin/bash

source vars.sh
source functions.sh

if [ -z $1 ];
then
    help
    exit 2
fi

if [ ! -z $3 ];
then
    sword=$3
fi

if [ ! -z $1 ];
then
    case $1 in
        "makecache" )  echo "Making cache "
                       makecache
                       ;;
        "search"     )
                       if [ ! -z $2 ] && [ ! -z $sword ]
                       then
                           if [ $2 = "repo" ]
                           then
                               starg="repo"
                           elif [ $2 = "cache" ]
                           then
                               starg="cache"
                           fi
                           search
                       fi
                       ;;
        "help"       )
                       help
                       ;;
        *            )
                       echo "Invalid input"
                       help
                       exit 2
                       ;;
    esac
fi

IFS=$SAVEIFS
