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

Then go get a cup of coffee.  It takes about 26 minutes on my machine
and requires about 6 GB of space.  If all goes well a 150 MB `sdcard.img`
will be in the top level directory for flashing onto the Pi.

Boot the pi on the ethernet and it should show up as `audio-ABCDEF` in
your AirPlay picker.

TODO:

* [ ] WiFi support (currently uses `eth0`)
* [x] Automate multi USB sound card setup (need to create new config files)
* [x] Hostname persistence
* [x] ssh host key persistence
* [ ] Friendly names for the instances
