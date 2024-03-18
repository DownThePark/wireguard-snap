# WireGuard Snap
[![wireguard](https://snapcraft.io/wireguard-dtp/badge.svg)](https://snapcraft.io/wireguard-dtp)

This is a community-developed [WireGuard](https://www.wireguard.com/) snap, that basically just repackages the WireGuard package from the Ubuntu package repository.

## Features
- Strict confinement
- Support for multiple CPU architectures

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/wireguard-dtp)

This snap can be installed from the Snap Store using the following command:

    sudo snap install wireguard-dtp

## Usage

First, drop your `wg0.conf` file into `/var/snap/wireguard-dtp/current/etc`

Then, connect the `firewall-control` and `network-control` interfaces

    sudo snap connect wireguard-dtp:network-control

    sudo snap connect wireguard-dtp:firewall-control
   
Finally, restart WireGuard

    sudo snap restart wireguard-dtp

## To Do
- Support unlimited .conf files (currently only supports `wg0.conf`)
