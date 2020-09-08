#!/usr/bin/env bash -x


FILES=$(find /home/bastibast/lendicotest -mtime 0 ) 

if [ -n '${FILES}' ]
then
  for f in ${FILES}
  do
     f2=$(basename ${f})
     scp -i /home/bastibast/.ssh/keytest ${f} bastienjeanelle@192.168.0.103:/Users/bastienjeanelle/lendico/${f2}
  done
fi
exit







