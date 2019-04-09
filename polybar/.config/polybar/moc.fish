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
      echo "%{T6}%{T-} No title"
    else
      echo "%{T6}%{T-} $title[2]"
    end
  case PLAY
    set -l title (echo $info | string match -r 'Title: (.*)Art' )
    if test $status -ne 0
      echo " No title"
    else
      echo " $title[2]"
    end
  case STOP
    echo "%{T6}%{T-}"
  case "*"
    echo ""
  end

end
