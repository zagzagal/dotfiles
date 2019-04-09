#! /usr/bin/env fish

set -l count (nmcli | grep -w -i "connected" | wc -l)
if test $count -eq 0
  echo ""
  exit 1 
end

set -l updates (xbps-install -Suvn 2> /dev/null | string match -a -e "Found")

if test $status -ne 0
  echo ""
else
  set -l num (count $updates)
  echo "$num updates"
end
