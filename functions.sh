function makecache {
    if [ -f $cachefile ];
    then
        echo "Cleaning ..."
        rm -i $cachefile
    fi
    for i in $lx_list;
    do
        echo "Filling up cache with: $i"
        curl -s -L $i | grep -P -i -o $rgx >> $cachefile
    done
    ls -lah $cachefile
}

function search {
     if [ $starg = "repo" ]
     then
        for i in $lx_list
        do
            curl -s -L $i | grep -P -i -o $rgx | grep $sword
        done
     elif [ $starg = "cache" ]
     then
        if [ -f $cachefile ]
        then
            cat $cachefile | grep -i $sword
        else
            echo 'Cache is empty. Create it at first with makecache ...'
        fi
     fi
}

function help {
    echo -e 'Usage:\n      work action(makecache|[search] [cache|repo]) [package]'
}
