#!/usr/bin/env bash -x

FILES=$(ssh bastibast@192.168.0.200 -- find /home/bastibast/lendicotest -type f -mtime 0 2>&1) 
echo "$FILES"
scp -T -i ~/.ssh/id_rsa bastibast@192.168.0.200:"$FILES" ~/lendico/multiplecopy/${FILES##*/}








