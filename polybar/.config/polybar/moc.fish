#! /usr/bin/env fish

while true
  sleep 5

  set -l running (ps -ef | grep -v grep | string match -e "mocp")
  if test $status -ne 0
    echo ""
    continue
  end

  set -l info (mocp -i)
  set -l state (echo $info | string match -r "State: (\w+)")
  switch $state[2] 
  case PAUSE
    set -l title (echo $info | string match -r 'Title: (.*)Art' )
    if test $status -ne 0
      echo "Paused: No title"
    else
      echo "Paused: $title[2]"
    end
  case PLAY
    set -l title (echo $info | string match -r 'Title: (.*)Art' )
    if test $status -ne 0
      echo "Playing: No title"
    else
      echo "Playing: $title[2]"
    end
  case STOP
    echo "Stopped"
  case "*"
    echo ""
  end

end
