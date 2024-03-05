#!/bin/bash

if [ -f $SNAP_DATA/etc/wg0.conf ]; then
  $SNAP/bin/wg-quick up wg0
else
  echo -e " --- IMPORTANT ---
Connect this snap to the required interfaces using:
  > snap connect $SNAP_NAME:network-control
  > snap connect $SNAP_NAME:firewall-control
Afterwards, place your wg0.conf file under:
  $SNAP_DATA/etc
Finally, restart this snap using:
  > snap restart $SNAP_NAME
  "
fi
