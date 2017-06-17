This is a simple script that downloads a list of audio from youtube URLS.  The URLs are listed in a file
called GoodSongs.txt.  The script calls youtube-dl on all lines and stores the audio in the directory
youtubeSongs.  Since they are in m4a format and I want them in mp3 i call faad to convert every file in youtubeSongs
to .wav and stores them in the wavSongs directory.  I then call lame to convert every file in wavSongs to .mp3 and
store them in mp3Songs directory.  I then create a directory with todays date, cp all mp3 files to the directory, 
and then move it ~/Media/Music.  
