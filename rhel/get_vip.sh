#!/bin/bash

SLIST=$(cat /home/adingman/slist)

for i in $SLIST

  do	
   VIP=$(grep $i /scs/system/data/master_server_list/master_server_list|cut -d ":" -f 10) 
   echo $i $VIP
  done

