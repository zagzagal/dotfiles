#! /usr/bin/env fish

set -l alert "#f4aba2"

set -l state (dropbox status)
switch $state
case "Dropbox isn't running!"
  echo "%{F$alert} [not running]%{F-}"
case "Up to date"
  echo ""
case "*"
  echo "%{F$alert}%{F-} [$state]"
end
