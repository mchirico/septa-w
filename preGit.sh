#!/bin/bash

# Commands to remove files:
# git rm --cached src/environments/environment.ts
# git rm --cached src/environments/environment.prod.ts

# Commands to encrypt files:
# travis encrypt-file src/environments/environment.ts --add
# travis encrypt-file src/environments/environment.prod.ts --add

# Testing
tar czf src_environments.tar.gz src/environments
yes|travis encrypt-file src_environments.tar.gz --add
#ng test
#
npm run test -- --single-run --no-progress --browser=ChromeNoSandbox
npm run e2e -- --no-progress --config=protractor-ci.conf.js



