---
layout: post
title: Converting Video Game Music with vgm2wav
---

As part of a larger project involving procedurally generated music, 
I modified [blargg's GameMusicEmu](http://blargg.8bitalley.com/libs/audio.html#Game_Music_Emu) test program for easier integration with other audio programs. You can find the program on [GitHub as vgm2wav](https://github.com/weinerjm/vgm2wav).

There already exist a great many audio conversion utilities for video game music files to WAV, MP3, or MIDI, with varying degrees of sophistication. 
The [vgmtrans project](https://github.com/vgmtrans/vgmtrans) does conversion in a sophisticated way that (I am guessing) selects the MIDI instruments on the output from the set of voices specific to each game developer. 
I couldn't get it to work properly and it would crash a lot. 
This was probably my fault since I didn't exhaustively debug my Frankenstein build environment.

Most other programs are GUIs that _can_ run under Wine in Mac OS X. 
For my purposes, a GUI is too slow.  
Many examples can be found on [Zophar's Domain](http://www.zophar.net/utilities/converters.html). 

I was after a simple program where I could specify an input file and optionally send the output to `stdout` for use with programs like [WaoN](http://waon.sourceforge.net/) or [Sound eXchange (SoX)](http://sox.sourceforge.net/) in shell or Python scripts. 
I needed this functionality to process large numbers of songs in a fairly fast and standardized way. 

By building on the great library and example programs that [blargg](http://blargg.8bitalley.com/) put together, I was able to get a nice tool working fairly quickly. 
It also gave me a chance to brush up on my C skills--the last time I did anything significant in C was about ten years ago! 
Doing this also made me appreciate the hard work and cleverness that has gone into emulator development.

Testing has been limited but a full SPC/NSF to MIDI with WaoN seems to work fine for the NES and simple voices on the SNES (especially with voice isolation). 

Check out the project on [GitHub](https://github.com/weinerjm/vgm2wav) and let me know if you found it useful, or if you have more questions!
