#!/bin/bash
cd $1
exec ctags-exuberant -f tags \
    -h ".php" -R \
    --exclude="\.svn" \
    --exclude="\doc" \
    --exclude="\PHPUnit" \
    --exclude="\jsunit" \
    --totals=yes \
    --tag-relative=yes \
    --PHP-kinds=+cf \
    --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
    --regex-PHP='/interface ([^ ]*)/\1/c/' \
    --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
