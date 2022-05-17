# audio_quality_switcher

Simple script to switch pulseaudio configuration files. One of them is for higher sound quality output, but the microphone on thinkpad does not work with this config and the cpu usage is a lot higher, so for certain situations I need to downgrade the sound quality, so that the mic is working. You might need to reboot in order for changes to take place

before using, compile the renameat.c file and call it renameat, and put the binary somewhere on your $PATH </br>
`gcc -o renameat renameat.c`</br>
`sudo mv ./renameat /usr/loca/bin/renameat`</br>
