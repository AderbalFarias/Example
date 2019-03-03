#Git commands:
cd /c/git/folder/ #> Navigate
git checkout [branchYouWannaGo] #> Switch branches
git clone [url] #> Clone a repository
git fetch #> Update your remote-tracking branches 
git pull #> It does a git fetch followed by a git merge
git checkout -b [nameOfYourNewBranch] #> It creates a new branch
git stash save "message" #> It creates a stash that allows we pull code and then merge the code without commit it, like config files
git stash apply stash@{numberOfStash} #> Get back the files stashed
git stash pop stash@{numberOfStash} #> Return your repository to status before the stash (you will lose changes)
git stash drop stash@{numberOfStash} #> Delete stash
git stash apply $stash_rash #> Get back the files from a deleted stash
git stash save --keep-index "message" #> Stashing files that are not in the staging area
git stash save -p "message" #> Stashing changes per hunk (if you change 5 peaces in a file it will show a dialog to you choose)
    #Dialog: Stash this hunk [y,n,q,a,d,e,?]?
    #y - stash this hunk
    #n - do not stash this hunk
    #q - quit; do not stash this hunk or any of the remaining ones
    #a - stash this hunk and all later hunks in this file
    #d - do not stash this hunk or any of the later hunks in the file
    #e - manually edit the current hunk
    #? - print help
git stash show #> show files that changed
git stash show -p #> show the full diff in the files that changed
git reset HEAD filename/*/. #> Removing files from staging area and back to current working directory
git reset --hard HEAD~1 #> Removing a commit (You will lose the changes in that commit)
git reset --soft HEAD^ #> It will reset the index to HEAD^ (previous commit), however, it will leave the changes in stage area
git reset --hard HEAD^ #> rollback changes
git add . #> Adding to stage area
git commit -m "message" #> Adding files to local repository
git push origin [branchYouWorking] #> It pushes the code to remote branch
git log --autor=[yourName] #> To see your commits
git gc --prune=now #> Way to delete data that has accumulated in Git but is not being referenced by anything
git remote prune origin #> Way to delete data that has accumulated in Git but is not being referenced by anything
:wq #> Exit merge screen in git bash

#Pull Request: (You have done stashes, commits and it's ready to push)
git checkout [branchRoot]
git pull
git checkout [branchWhereDevelopmentWasDone]
git merge [branchRoot]
git push --set-upstream origin [branchWhereDevelopmentWasDone]

#Git Sync Fork Example 1: 
git checkout master
git remote add upstream git://github.com/REPOSITORY_ORIGIN/PROJECT_ORIGIN
git fetch upstream
git merge upstream/master
git push

#Git Sync Fork Example 2: 
git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
git checkout master
git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
git fetch upstream
git pull upstream master