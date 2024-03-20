# WireGuard Snap
[![wireguard](https://snapcraft.io/wireguard-dtp/badge.svg)](https://snapcraft.io/wireguard-dtp)

This is a community-developed [WireGuard](https://www.wireguard.com/) snap that includes a `oneshot` service to help automate VPN configuration.

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/wireguard-dtp)

This snap can be installed from the Snap Store using the following command:

    sudo snap install wireguard-dtp

## Usage

First, connect the `firewall-control` and `network-control` interfaces.

```
sudo snap connect wireguard-dtp:network-control
sudo snap connect wireguard-dtp:firewall-control
```

Then, drop your `wg0.conf` file under `/var/snap/wireguard-dtp/current/etc`.

```
sudo cp wg0.conf /var/snap/wireguard-dtp/current/etc
```

Finally, restart WireGuard.

```
sudo snap restart wireguard-dtp
```

>[!NOTE]
>Due to strict confinement, updating DNS in `/etc/resolv.conf` automatically is not supported.

## To Do
- Support unlimited .conf files (currently only supports `wg0.conf`)
