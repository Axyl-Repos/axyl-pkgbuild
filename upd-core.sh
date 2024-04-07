#!/bin/bash

# moving packages to core repository from local machine mlc repo
mv ../pkgs/out/* ../axyl-core-repo/x86_64/

# update repository, remove .old & push changes
(cd ../axyl-core-repo/x86_64/;
repo-add axyl-core-repo.db.tar.gz *.pkg.tar.zst;
rm -rf *.old;
git add .;
git commit -m "Update Core Repository";
.tkn personal;
git push -u origin master)
