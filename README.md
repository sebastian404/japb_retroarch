## AUS JAPB Retroarch
This is an unofficial port of Retroarch to the AUS Just Another Pandora's Box hardware, it comes with no roms or other copyrighted files.


## Introduction
This is a port of [RetroArch](https://github.com/libretro/RetroArch)

The imgage comes bundled with the following cores:

Arcade
* fbalpha2012_cps1_libretro
* fbalpha2012_cps2_libretro
* fbalpha2012_cps3_libretro
* fbalpha2012_libretro
* fbalpha2012_neogeo_libretro
* fbalpha_libretro
* mame2000_libretro
* mame2003_libretro
* mame2003_midway_libretro
* mame2010_libretro
* mame2014_libretro
* mame_libretro

Sega
* genesis_plus_gx_libretro

Nintendo
* nestopia_libretro
* quicknes_libretro
* snes9x2002_libretro
* snes9x2005_libretro
* snes9x2010_libretro
* snes9x_libretro

NEC
* beetle-pce-fast-libretro
* beetle-supergrafx-libretro


## Disclaimer
I am not responsible for any damage to your hardware as a result of using this file, it has been tested as much as possible but your on your own if your house catches fire, your dog dies or your Uncle who works for Nintendo touched you in a bad place.

As this port uses both NEON and Mali cores inside the A13 chip it does get a lot warmer than in 'normal' operation, I strongly recommend you install a passive heat sink if you plan on using it for an extended amount of time.


## Installation Instructions
You will need an 8Gb SD card, Class 10 is best not not essential.  Download/unzip the latest release and burn/write it in the usual way.

You can add games in the /storage folder, place games in the 'roms' directory, for some systems you will to add BIOS files into the 'system'.


## Compatible Hardware
The AUS clone of the Pandora's Box is a very popular JAMMA arcade board on sites like AliExpress.  There are several different versions of the product re-packaged under different names.

It is often referred to as ‘Just another Pandora’s Box’, and sold under the names Pandora’s Box 3/4/4s/4X, King of Air, Heroes of the Storm 3 & Little Elf 3X.  The number of built in Games will vary between 520 and 800, or more.  If you are looking to purchase one look for a listing with the picture of the case and ensure it has the AUS logo on it.  Check with the seller that is a ‘genuine AUS’ version, to be really sure.

The hardware is all fairly similar, however this version has only been tested as working on the 87 and the 92C version.

GSG.GME.R3.87![GSG.GME.R3.87](https://github.com/sebastian404/aus_pb4_doom/raw/master/media/SG.GME.R3.87.jpg)
GSG.GME.R3.92C![GSG.GME.R3.92C](https://github.com/sebastian404/aus_pb4_doom/raw/master/media/SG.GME.R3.92C.jpg)


## Credits
RetroArch is of course based on [RetroArch](https://github.com/libretro/RetroArch)

The joystick driver is based on the gamecon_gpio_rpi driver by [marqs](https://github.com/marqs85)
