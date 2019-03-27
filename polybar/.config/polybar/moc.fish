#! /usr/bin/env fish

while true
  sleep 5

  set -l running (ps -ef | grep -v grep | string match -e "mocp")
  if test $status -ne 0
    echo ""
    continue
  end

  set -l info (mocp -i)
  switch (echo $info | mwk 'State: (\w+)' '$1') 
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
  case "*"
    echo ""
  end

end
