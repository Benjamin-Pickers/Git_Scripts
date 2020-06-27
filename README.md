# Git Bash Scripts
***

Since some git process are very common, like initializing a new repository or committing changes, I have
created bash scripts to help simplify these processes.
<br>

## Git-Init
***

The git-init script initializes a new local git repository in the directory its was used in. By default it also creates a README file,
and if you give the title of the repository as the first argument, the README will contain the title. All files in the directory are
then staged and committed with an optional comment. You are then prompted to give the remote GitHub link to push the changes to GitHub.
Depending on how git is setup on your machine, you may need to enter your GitHub username and password.

## Git-commit
***

Git-commit does just what the name suggests and commits and pushes changes to your remote repository. You have the choice of staging
specific files or just staging all changed ones. You are prompted to enter a commit description and then asked if you want to push
the changes to GitHub at that moment.
