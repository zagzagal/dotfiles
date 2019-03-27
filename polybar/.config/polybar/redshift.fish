#! /usr/bin/env fish

redshift -p 2> /dev/null | string match -e 'Night' > /dev/null

if test $status -eq 0
  echo "Night"
end
