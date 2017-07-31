#!/bin/bash

./configure --enable-threads --enable-floathard --enable-opengles --enable-mali_fbdev --enable-neon --disable-x11 --enable-sdl --disable-sdl2 --enable-alsa --disable-networking --disable-networkgamepad  --enable-xmb --disable-cheevos --enable-libxml2 --enable-freetype --prefix=/ --disable-libusb 

make -j$(nproc)

