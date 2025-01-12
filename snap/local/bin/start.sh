#!/bin/bash

if [ ! -z "$(ls -A $SNAP_DATA/etc)" ] ; then
  cd $SNAP_DATA/etc

  file_list=(*)
  trimmed_file_list=("${file_list[@]%.*}")

  for file in ${trimmed_file_list[*]}
  do
    $SNAP/usr/bin/wg-quick up $file
  done
fi
