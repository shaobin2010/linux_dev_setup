#!/bin/bash

set -e

curl -o /usr/local/bin/repo https://raw.githubusercontent.com/shaobin2010/google-repo/master/repo

chmod a+x /usr/local/bin/repo

echo "Done"
exit 0
