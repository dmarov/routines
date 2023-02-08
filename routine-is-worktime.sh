#!/usr/bin/env zsh

# script returns error if today is weekend
# use like: ./routine-is-worktime && mattermost-desktop

if [[ $(date +%u) -gt 5 ]];
then
    exit 1;
fi

if [[ $(date +%H) -lt 8 ]];
then
    exit 1;
fi

if [[ $(date +%H) -gt 19 ]];
then
    exit 1;
fi

exit 0
