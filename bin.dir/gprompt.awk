#!/usr/bin/awk -f 
# execute like:
# % git status |& git-prompt.awk

BEGIN { branch = ""; prefix=""; suffix="" }

/## / { branch = $2; }
/untracked files present/ { prefix = prefix  "*"; }
/Changed but not updated/ { prefix = prefix  "^"; }
/Changes to be committed/ { prefix = prefix  "~"; }
/Changes not staged/ { prefix = prefix  "*"; }
/branch is ahead/ { suffix = suffix "+"}
/branch is behind/ { suffix = suffix "-"}

END { if (branch != "") { print " (" prefix branch suffix ")"} }



## master
 D ack
 D colortest
 M ../cshrc
 M ../update-bundles
 M ../vimrc
?? gprompt.awk
