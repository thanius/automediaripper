# Automediaripper 0.95
A BASH front end to simplify the backup process of movies, TV series and music.

## Features!
- Supports DVD, CDDA and BluRay
- Automatically detect media: Movies, TV shows and music CD's are handled differently
- Automatically detects language on audio and subtitle tracks on DVD's and muxes them in prefered order
- Automatically selects 5.1 audio on DVD's when available and removes special features, director's commentary, etc
- IMDb lookup on videos: By using the power of Google, even obscure Volume ID's may find its right title (Even abbreviations)
- Disney DVD copy-protection bypass on DVD's: Identify and rip most Disney DVDs with 99 titles and spoofed data
- Rips, encodes and tags CD tracks to MP3, OGG or FLAC, complete with simple playlist creation and cover art download
- Ease of use: Just pop in disc and run!
- Plays a nice fanfare when encoding is complete - can you guess the movie?

## Requirements

- bash
- HandBrakeCLI
- isoinfo and lsdvd
- makemkvcon
- icedax
- lame
- flac
- oggenc
- vorbiscomment
- glyrc
- udisks

```
sudo apt-get install bash handbrake-cli isoinfo lsdvd icedax lame flac oggenc vorbiscomment glyrc udisks
```
MakeMKV:
  http://www.makemkv.com/forum2/viewtopic.php?f=3&t=224

## PLEASE NOTE

- Always double check your results after conversion
- If the script doesn't behave as expected, rip manually
