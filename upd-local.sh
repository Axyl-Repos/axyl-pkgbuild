#!/bin/bash

# moving packages to core repository
mv ./local-x86_64/* ../axyl-repo/x86_64/

# update repository, remove .old & push changes
(cd ../axyl-repo/x86_64/;
repo-add axyl-repo.db.tar.gz *.pkg.tar.zst;
rm -rf *.old;
git add .;
git commit -m "Update Local Repository";
.tkn personal;
git push -u origin master)
