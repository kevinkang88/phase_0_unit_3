## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
<!-- Your defnition here -->
calling $git add places files in staging area before they could be committed. After $git init is called, $git add . is often used to track all the existing files. After the staged file is modified again it is necessary to call add again in order to commit.   

#### branch
<!-- Your defnition here -->
git branch command is a general branch management tool. 
$git branch - command lists all the branches
$git branch (branch name) - creates a new branch
$git branch -d (branch name) - deletes a branch

#### checkout
<!-- Your defnition here -->
$git checkout (branch name) command is used to jump between branches

#### clone
<!-- Your defnition here -->
$git clone (remote .git repo url) downloads copy of a project to local repo

#### commit
<!-- Your defnition here -->
$git commit takes a snapshot of all the staged files with a message

#### fetch
<!-- Your defnition here -->
downloads new branch and data from remote repository

#### log
<!-- Your defnition here -->
filter through commit history

#### merge
<!-- Your defnition here -->
merge any branch into current branch 

#### pull
<!-- Your defnition here -->
git pull fetch from a remote repo and try to merge into the current branch

#### push
<!-- Your defnition here -->
push your new branches and data to a remote repository

#### reset
<!-- Your defnition here -->
resets files that are incorrectly staged
resets to last commit 

#### rm
<!-- Your defnition here -->
removes the file from staging area and untracks it

#### status
view the status of your files in the working directory and staging area

## Release 3: Git Workflow

- Push files to a remote repository
    git status 
    git add .
    git commit -m "msg" 
    git checkout master
    git remote add origin git@github.com:username/reponame.git 
    git push origin master

- Fetch changes
    git remote add upstream https://github.com/octocat/repo.git 
    git fetch upstream
    git checkout master
    git merge upstream/master

- Commit locally
    git add (. for all or inividual files)
    git commit -m "msg"