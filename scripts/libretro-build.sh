#!/bin/bash

build_project()
{
   echo "=== Building $1 ==="
   pushd .
   cd "$1"

   if [ "$2" != "." ]; then
      cd "$2"
   fi

   make -f "$3" clean

   if [ "$4" ]; then
      echo "make -j$(nproc) -f $3 $4"
      make -j$(nproc) -f "$3" "$4"
   else
      echo "make -j$(nproc) -f $3"
      make -j$(nproc) -f "$3"
   fi

   popd
   echo "=== done ==="
}

# atari
build_project "libretro-atari800" "." "Makefile" ""
build_project "libretro-prosystem" "." "Makefile" ""
build_project "libretro-stella" "." "Makefile" ""

# Nintendo
build_project "libretro-fceumm" "." "Makefile.libretro" ""
build_project "libretro-nestopia" "libretro" "Makefile" ""
build_project "libretro-quicknes" "." "Makefile" ""

build_project "libretro-snes9x" "libretro" "Makefile" ""
build_project "libretro-snes9x2002" "." "Makefile" ""
build_project "libretro-snes9x2005" "." "Makefile" ""
build_project "libretro-snes9x2010" "." "Makefile.libretro" ""

#Sega
build_project "libretro-genesis_plus_gx" "." "Makefile.libretro" ""

#NEC
build_project "libretro-mednafen_pce_fast" "." "Makefile" ""
build_project "libretro-mednafen_supergrafx" "." "Makefile" ""

# Final Burn
build_project "libretro-fbalpha" "." "makefile.libretro" ""
build_project "libretro-fbalpha2012" "svn-current/trunk" "makefile.libretro" ""
build_project "libretro-fbalpha2012_neogeo" "." "Makefile" ""
build_project "libretro-fbalpha2012_cps1" "." "makefile.libretro" ""
build_project "libretro-fbalpha2012_cps2" "." "makefile.libretro" ""
build_project "libretro-fbalpha2012_cps3" "svn-current/trunk" "makefile.libretro" ""


# MAME
build_project "libretro-mame" "." "Makefile" ""
build_project "libretro-mame2014" "." "Makefile" ""
build_project "libretro-mame2000" "." "Makefile" "ARM=1 USE_CYCLONE=1 USE_DRZ80=1"
build_project "libretro-mame2003" "." "Makefile" ""
build_project "libretro-mame2003_midway" "." "Makefile" ""
build_project "libretro-mame2010" "." "Makefile" "VRENDER=soft CC=arm-linux-gnueabihf-gcc CXX=arm-linux-gnueabihf-g++ LD=arm-linux-gnueabihf-g++ platform=armv7-neon-hardfloat PTR64=0"

