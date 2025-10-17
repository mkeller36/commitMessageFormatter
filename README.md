# Overview 
This script was created to allow the addition of the Jira ticket number be added to the front of your commit message. \
This allows for tracability with development and, as some places have rules that all commits must follow this structure, allows us not to not have to remember the jira ticket number or to but it in the commit message, lest we be forced to amend or force rebase our commit messages.\
The base technology that allows this is Git Hooks and if you would like to know how this works I would recommend researching those. \

# How it works
1. Place the script in the upper most directory of your git repository.
2. Make sure you have permissions to execute the file ('ls -l')
    1. If you do not have permissions, add them using 'chmod -x addCommitMessageFormatter.h'
3. Run the file './addCommitMessageFormatter.h'
4. The file will delete itself after use. To validate it worked, check the file '.git/hooks/prepare-commit-msg' to see if it contain the necessary logic, or you can make a commit and see if it added the jira ticket.

# Things Michael should add 
- [ ] Addility to take a file path as an imput, and have the default file path assume it is in top level of repo\
- [ ] Error checkers for touch, chmod, and printf\

