#!bash
TEMP_SEARCH_EMAIL=$1
export TEMP_SEARCH_EMAIL
git filter-branch --commit-filter '
        searchemail=$TEMP_SEARCH_EMAIL
        uname=`git config --get user.name`
        uemail=`git config --get user.email`
        if [ "$GIT_AUTHOR_EMAIL" = "$searchemail" ];
        then
                GIT_AUTHOR_NAME="$uname";
                GIT_AUTHOR_EMAIL="$uemail";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD || echo "git filter-branch seems to have failed. You should read this: https://stackoverflow.com/a/7654880/6272829"
TEMP_SEARCH_EMAIL=''
export TEMP_SEARCH_EMAIL
export -n TEMP_SEARCH_EMAIL
