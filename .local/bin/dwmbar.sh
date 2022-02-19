#!/bin/sh

while true; do
	IP="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')"
	MEM="$(free -h | awk '/^Mem/ {print $3"/"$2}')"
	DATE="$(date +'%a %d/%m/%y')"
	TIME="$(date +'%H:%M')"
	
	xsetroot -name "<span font_size='11pt' font_desc='Bold' fgcolor='#282828'>\
<span bgcolor='#fb4934'> ${IP} <span fgcolor='#fabd2f' font_size='12pt'></span></span>\
<span bgcolor='#fabd2f'> ${MEM} <span fgcolor='#b8bb26'></span></span>\
<span bgcolor='#b8bb26'> ${DATE} <span fgcolor='#d3869b'></span></span>\
<span bgcolor='#d3869b'> ${TIME} </span></span>"

	# #fe8019
	# #83a598
	sleep 1s
done
