## JAPB Retroarch
This is an unofficial port of Retroarch to the Pandora's Box hardware, it comes with no roms or other copyrighted files and does not condone illegal activity.

## Introduction
This is a port of [RetroArch](https://github.com/libretro/RetroArch) v1.70

As the intended target hardware is a JAMMA Cabinet not all libretro cores are included, only those that would logically work with the standard JAMMA Joystick & buttons.

While it's possible to build and run most libretro cores, Computer based cores would require a keyboard to be fully useful, and Advanced Consoles require complicated mapping for Analogue to Digital input.

The project contains the following cores:

Arcade
* fbalpha2012_libretro
* fbalpha2012_cps1_libretro
* fbalpha2012_cps2_libretro
* fbalpha2012_cps3_libretro
* fbalpha2012_neogeo_libretro
* fbalpha_libretro
* mame2000_libretro
* mame2003_libretro
* mame2003_midway_libretro
* mame2010_libretro
* mame2014_libretro
* mame_libretro

Atari
* atari800_libretro
* prosystem_libretro
* stella_libretro

Sega
* genesis_plus_gx_libretro
* picodrive_libretro

Nintendo
* fceumm_libretro
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
You will need at least an 8Gb SD card, Class 10 is best not not essential, larger cards may also work but due to the nature of the hardware not all boards are compatible with all SD cards.   If your using a larger SD card you can expand the 2nd partition to add additional files if required.

You can add games in the /storage folder, place games in the 'roms' directory, for some systems you will to add BIOS files into the 'system'.


## Compatible Hardware
The Pandora's Box is a very popular Multi Game JAMMA arcade board on sites like AliExpress, it uses emulation to recreate a number of Classic Arcade Games.

There are many different versions of the product re-packaged under different names.  The original hardware was designed and produced by GAuangzhou 3A Game Electronic Technology Co., Ltd. and there have been numerous clones/versions produced by both 3A and other manufacturers.

The clones are often referred to as ‘Just Another Pandora’s Box’, and sold under the names Pandora’s Box, King of Air, Heroes of the Storm, Little Elf & Pandora's Key. The number of built in Games will vary between 520 and 999 or more, attempting to document the different versions is something outside of the scope of this project.

The hardware is very similar being based around the Allwinner A13 chip, however different boards have some hardware differences, for example the AUS boards use a custom FGPA to offload video scaling.

This project has been built for and tested against a number of different boards, they are listed below.

AUS
* SG.GME.R3.87![SG.GME.R3.87](https://raw.githubusercontent.com/sebastian404/japb_retroarch/master/media/SG.GME.R3.87.jpg)
* SG.GME.R3.87L-17![SG.MGE.R3.87L-17](https://raw.githubusercontent.com/sebastian404/japb_retroarch/master/media/SG.GME.R3.87L-17.jpg)
* SG.GME.R3.92C![SG.GME.R3.92C](https://raw.githubusercontent.com/sebastian404/japb_retroarch/master/media/SG.GME.R3.92C.jpg)

ROCKY
* MB6![MB6](https://raw.githubusercontent.com/sebastian404/japb_retroarch/master/media/MB6.jpg)


## Credits
RetroArch is of course based on [RetroArch](https://github.com/libretro/RetroArch)

The joystick driver is based in part on the gamecon_gpio_rpi driver by [marqs](https://github.com/marqs85)

In addition elements of the following projects:
* [Busybox](https://busybox.net/)
* [Advanced Linux Sound Architecture (ALSA) project](https://alsa-project.org/)
* [Simple DirectMedia Layer](https://www.libsdl.org/)
* [The FreeType Project](https://www.freetype.org/)
* [libpng](http://www.libpng.org//pub/png/libpng.html)
* [zlib](https://zlib.net/)
