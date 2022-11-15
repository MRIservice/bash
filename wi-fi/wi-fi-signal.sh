#! /usr/bin/bash
# Monitor signal strength to troubleshoot IT problems and optimize speed.

watch -n 1 cat /proc/net/wireless
