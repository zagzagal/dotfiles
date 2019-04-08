#! /usr/bin/env fish

set -l state (dropbox status)
switch $state
case "Dropbox isn't running!"
  echo " [not running]"
case "Up to date"
  echo ""
case "*"
  echo " [$state]"
end
