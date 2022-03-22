#!/bin/bash

# moving packages to 3rd party repository
mv ./3rdparty-x86_64/* ../axyl-3party-repo/x86_64/

# update repository, remove .old & push changes
(cd ../axyl-3party-repo/x86_64/;
repo-add axyl-3party-repo.db.tar.gz *.pkg.tar.zst;
rm -rf *.old;
git add .;
git commit -m "Update 3rd Party Repository";
.tkn personal;
git push -u origin master)
