#! /usr/bin/env fish

nmcli | grep "servers:" > /dev/null
if test $status -ne 0
  exit 1
end
