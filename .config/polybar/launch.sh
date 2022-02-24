#!/bin/sh

pgrep -x polybar > /dev/null || polybar -r main &
