#!/bin/bash

$SNAP/bin/wg-quick down wg0

/usr/sbin/ip link delete wg0
