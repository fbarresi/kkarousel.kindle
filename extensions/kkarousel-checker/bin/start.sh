#!/bin/sh

cd "$(dirname "$0")"

# Solve home screen overlapping issue
sleep 1
eips -c
sleep 1
eips -c
sleep 5

# Clean up display, show initialisation message
/usr/sbin/eips -c
/usr/sbin/eips -c
/usr/sbin/eips 11 18 'kkrousel'
/usr/sbin/eips 11 19 'github.com/fbarresi/kkarousel.kindle'
/usr/sbin/eips 6 20 'This program will check prerequisites'
/usr/sbin/eips 7 21 'for kkarousel.kindle'
/usr/sbin/eips 0 23 '--------------------------------------------------'
sleep 5

/usr/sbin/eips 0 24 'Checking if Python is installed...'
sleep 1
python3 download.py
eips -f -g cover.png
DATE=$(date +"%d %B %Y %-H:%-M")
eips 1 39 "$DATE"

if python -c ""; then
	/usr/sbin/eips 0 25 'Installed'
else
	/usr/sbin/eips 0 25 'Failed'
	/usr/sbin/eips 0 26 'You need Kindle Python to use Weather Stand'
	/usr/sbin/eips 0 27 'Press Home button to exit...'
	exit 1
fi


/usr/sbin/eips 0 37 'You are ready to start'
/usr/sbin/eips 0 38 'Press Home button to exit...'
