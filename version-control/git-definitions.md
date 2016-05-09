# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a tool that helps protect software by creating multiple versions of the code any time changes are made. Version control is useful because it allows users to see what changes have been made to the code over time. Version controal also serves as a backup in the event that new code causes issues, at which point you can revert to a previous version that is functioning correctly. 

* What is a branch and why would you use one?
A branch is essentially a copy of your working master code base that you can work on, adding changes to the code, while preserving your master code base. You would use a branch when you want to change part of your code. While you are making changes on your new branch, nothing is being changed on the master until you merge these changes. Branching is also useful when multiple people are working on the same project because it allows a user to work on their changes, without having the original code base change from the other people on the team making their changes.  

* What is a commit? What makes a good commit message?
A commit is essentially a save point in the repo. After you make changes to a file and stage those files, you will run a commit on the files you've changed to save these changes in the repo. A good commit message is detailed and specific in regards to the changes that have been made with the commit. You want a good commit message in case you or another team member have to go back and find a specific change that was made. 

* What is a merge conflict?
A merge conflict is an error typically caused when two members of the team edit the same line of code. When the two branches are merged, Git is confused as to which change to commit.  