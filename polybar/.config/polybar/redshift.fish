#! /usr/bin/env fish

set -l info (redshift -p 2> /dev/null)

set -l period (echo $info | mwk 'Period: (\w*)' '$1')

if test $period = "Night"
  echo "$period"
end
