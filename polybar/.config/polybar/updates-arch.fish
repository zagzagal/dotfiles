#! /usr/bin/env fish

set -l updates (checkupdates 2> /dev/null | wc -l)
set -l aurUpdates (yay -Qum 2> /dev/null | wc -l)

set -l total (math $updates + $aurUpdates)
#set -l updates (checkupdates 2> /dev/null | wc -l)

if test $status -ne 0
  echo ""
else
  if test $status -ne 0
    #set -l num (count $updates)
    echo "$total updates"
  else
    echo ""
  end
end
