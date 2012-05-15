#!/usr/bin/awk -f
# execute like:
# % git status |& git-prompt.awk

BEGIN { branch = ""; prefix=""; suffix="" }

/# On branch/ { branch = $4; }
/untracked files present/ { prefix = prefix  "*"; }
/Changed but not updated/ { prefix = prefix  "^"; }
/Changes to be committed/ { prefix = prefix  "~"; }
/Changes not staged/ { prefix = prefix  "*"; }
/nothing to commit/ {}
/branch is ahead/ { suffix = suffix "+"}

END { if (branch != "") { print "(" prefix branch suffix ")"} }

