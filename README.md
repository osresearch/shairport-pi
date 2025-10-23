# Multi-zone AirPlay2 audio receiver

This is an br2-external tree to build and configure a Raspberry Pi
as a multi-zone AirPlay2 receiver using the internal audio hardare
as well as attached USB audio devices.  The resulting SD card image
is mounted read-only so that it hopefully won't get corrupted due to
wear.

As of October 2025, buildroot had an old version of shairplay-sync
so [a custom tree](https://github.com/osresearch/buildroot/tree/shairport-sync-version)
is used instead.

To build a Pi 4 image:

```
git clone --recursive --shallow-submodules https://github.com/osresearch/shairport-pi
cd shairport-pi
make
```
