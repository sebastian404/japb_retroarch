#!/bin/bash

fetch_project()
{
   echo "=== Fetching $3 ==="
   if [ -d "$2/.git" ]; then
      cd "$2"
      git pull
      cd ..
   else
      git clone "$1" "$2"
   fi
   echo "=== Fetched ==="
}

fetch_subprojects()
{
   echo "=== Fetching $5 ==="
   cd "$2"
   cd "$3"
   if [ -d "$4/.git" ]; then
      cd "$4"
      git pull
      git submodule foreach git pull origin master
      cd ..
   else
      git clone "$1" "$4"
   fi
   cd ..
   cd ..
   echo "=== Fetched ==="
}

fetch_project_submodule()
{
   echo "=== Fetching $3 ==="
   if [ -d "$2/.git" ]; then
      cd "$2"
      git pull
      git submodule foreach git pull origin master
      cd ..
   else
      git clone "$1" "$2"
      cd "$2"
      git submodule update --init
      cd ..
   fi
   echo "=== Fetched ==="
}

if [ -z $WRITERIGHTS ]; then
   REPO_BASE="https://github.com"
else
   REPO_BASE="git://github.com"
fi

# atari
fetch_project "$REPO_BASE/libretro/libretro-atari800.git" "libretro-atari800" "libretro/atari800"
fetch_project "$REPO_BASE/libretro/prosystem-libretro.git" "libretro-prosystem" "libretro/prosystem"
fetch_project "$REPO_BASE/libretro/stella-libretro.git" "libretro-stella" "libretro/Stella"

# Nintendo
fetch_project "$REPO_BASE/libretro/QuickNES_Core.git" "libretro-quicknes" "libretro/QuickNES"
fetch_project "$REPO_BASE/libretro/nestopia.git" "libretro-nestopia" "libretro/Nestopia"
fetch_project "$REPO_BASE/libretro/libretro-fceumm.git" "libretro-fceumm" "libretro/FCEUmm"
fetch_project "$REPO_BASE/libretro/snes9x.git" "libretro-snes9x" "libretro/SNES9x"
fetch_project "$REPO_BASE/libretro/snes9x2002.git" "libretro-snes9x2002" "libretro/SNES9x2002"
fetch_project "$REPO_BASE/libretro/snes9x2005.git" "libretro-snes9x2005" "libretro/SNES9x2005"
fetch_project "$REPO_BASE/libretro/snes9x2010.git" "libretro-snes9x2010" "libretro/SNES9x2010"

#Sega
fetch_project "$REPO_BASE/libretro/Genesis-Plus-GX.git" "libretro-genesis_plus_gx" "libretro/Genplus GX"
fetch_project_submodule "$REPO_BASE/libretro/picodrive.git" "libretro-picodrive" "libretro/picodrive"

#NEC
fetch_project "$REPO_BASE/libretro/beetle-pce-fast-libretro.git" "libretro-mednafen_pce_fast" "libretro/Beetle PCE Fast"
fetch_project "$REPO_BASE/libretro/beetle-supergrafx-libretro.git" "libretro-mednafen_supergrafx" "libretro/Beetle SuperGrafx"

# Final Burn
fetch_project "$REPO_BASE/libretro/fbalpha.git" "libretro-fbalpha" "libretro/fbalpha"
fetch_project "$REPO_BASE/libretro/fbalpha2012.git" "libretro-fbalpha2012" "libretro/fbalpha2012"
fetch_project "$REPO_BASE/libretro/fbalpha2012_neogeo.git" "libretro-fbalpha2012_neogeo" "libretro/fbalpha2012_neogeo"
fetch_project "$REPO_BASE/libretro/fbalpha2012_cps1.git" "libretro-fbalpha2012_cps1" "libretro/fbalpha_cps1"
fetch_project "$REPO_BASE/libretro/fbalpha2012_cps2.git" "libretro-fbalpha2012_cps2" "libretro/fbalpha_cps2"
fetch_project "$REPO_BASE/libretro/fbalpha2012_cps3.git" "libretro-fbalpha2012_cps3" "libretro/fbalpha_cps3"

# MAME
fetch_project "$REPO_BASE/libretro/mame.git" "libretro-mame" "libretro/mame"
fetch_project "$REPO_BASE/libretro/mame2000-libretro.git" "libretro-mame2000" "libretro/mame2000"
fetch_project "$REPO_BASE/libretro/mame2003-libretro.git" "libretro-mame2003" "libretro/mame2003"
fetch_project "$REPO_BASE/libretro/mame2003_midway.git" "libretro-mame2003_midway" "libretro/mame2003_midway"
fetch_project "$REPO_BASE/libretro/mame2010-libretro.git" "libretro-mame2010" "libretro/mame2010"
fetch_project "$REPO_BASE/libretro/mame2014-libretro.git" "libretro-mame2014" "libretro/mame2014"

