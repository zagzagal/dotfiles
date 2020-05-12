#! /usr/bin/env fish

set -l updates (checkupdates && yay -Qum 2> /dev/null | wc -l)
#set -l updates (checkupdates 2> /dev/null | wc -l)

if test $status -ne 0
  echo ""
else
  if test $updates -ne 0
    #set -l num (count $updates)
    echo "$updates updates"
  else
    echo ""
  end
end
