#! /usr/bin/env fish

sleep 30

set -l updates (xbps-install -Suvn 2> /dev/null | mrep "Found" | wc -l)

if test "$updates" -gt 0
  echo "$updates updates"
else
  echo ""
end
