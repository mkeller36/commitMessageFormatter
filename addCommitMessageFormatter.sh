#!/bin/sh

filePath=".git/hooks/prepare-commit-msg"
touch $filePath
chmod +x $filePath
printf '#!/bin/sh\n'                                                    >> $filePath
# get active branch name 
printf 'BRANCH_NAME=$(git symbolic-ref --short HEAD)\n'                 >> $filePath
# get Jira ticket number from branch 
printf 'JIRA_TICKET=$(echo $BRANCH_NAME | grep -oE '                    >> $filePath
printf "'"                                                              >> $filePath
printf '[A-Z]+-[0-9]+'                                                  >> $filePath
printf "'"                                                              >> $filePath
printf ')\n'                                                            >> $filePath
printf 'if [ ! -z "$JIRA_TICKET" ]; then'                               >> $filePath
printf '\tCOMMIT_MSG=$(cat $1)\n'                                       >> $filePath
printf '\techo "$JIRA_TICKET $COMMIT_MSG" > $1\n'                       >> $filePath
printf 'fi\n'                                                           >> $filePath

rm ./addCommitMessageFormatter.sh