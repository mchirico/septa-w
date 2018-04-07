#!/bin/bash

# git rebase develop -i
# git push origin feature/d0  --force

# Commands to remove files:
# git rm --cached src/environments/environment.ts
# git rm --cached src/environments/environment.prod.ts

# Commands to encrypt files:
# travis encrypt-file src/environments/environment.ts --add
# travis encrypt-file src/environments/environment.prod.ts --add

## Testing (You need to delete keys, if you rerun this!)
# tar czf src_environments.tar.gz src/environments
# yes|travis encrypt-file src_environments.tar.gz --add
# rm src_environments.tar.gz

#
#ng test
#
npm run test -- --single-run --no-progress --browser=ChromeNoSandbox
npm run e2e -- --no-progress --config=protractor-ci.conf.js



