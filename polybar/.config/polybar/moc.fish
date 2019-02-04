#! /usr/bin/env fish

set -l info (mocp -i)

set -l state (echo $info | mwk 'State: (\w+)' '$1')

switch $state
case PAUSE
  set -l title (echo $info | mwk 'Title: (.*)Art' '$1')
  if test "$title" = ""
    echo "Paused: No title"
else
  echo "Paused: $title"
end
case PLAY
  set -l title (echo $info | mwk 'Title: (.*)Art' '$1')
  if test "$title" = ""
    echo "Playing: No title"
else
  echo "Playing: $title"
end
case STOP
  echo "Stopped"
end
