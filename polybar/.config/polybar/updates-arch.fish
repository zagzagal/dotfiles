#! /usr/bin/env fish

sudo xbps-install -S > /dev/null

set -l updates (xbps-install -Suvn 2> /dev/null | string match -a -e "Found")

if test $status -ne 0
  echo ""
else
  set -l num (count $updates)
  echo "$num updates"
end
