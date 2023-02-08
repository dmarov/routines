#!/usr/bin/env zsh

# script returns error if today is weekend
# use like: ./is-worktime && mattermost

if [[ $(date +%u) -gt 5 ]];
then
    exit 1;
fi

exit 0
