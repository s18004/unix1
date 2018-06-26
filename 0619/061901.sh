cat age | awk '{print int($1 / 10)}' | sort -n | uniq -c | awk '{print $2,$1}' | sed 's/^\(.*\) /\10~\19 /' | sed '1s/00/0/' | sed '1s/09/9/'
