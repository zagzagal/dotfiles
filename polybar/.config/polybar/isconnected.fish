#! /usr/bin/env fish

set -l count ( ip a | grep -i "inet " | wc -l )
if test $count -lt 2
  exit 1
end
