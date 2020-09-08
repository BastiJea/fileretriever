#!/usr/bin/env bash -x

AZURE_LOGIN=
AZURE_PASSWORD=
SFTP_USER=sftpuser
SFTP_ADDRESS=192.168.0.200
SFTP_PASSWORD=test
PUBLIC_KEY=
PRIVATE_KEY=

#ssh -tt -i $HOME/.ssh/id_rsa.pub bastibast@192.168.0.200 << 'EOSSH'
#FILES=$(ls -l --time-style=+%D | grep ${DATE} | grep -v 'ˆd'| awk '{print $NF}')
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







