#! /usr/bin/bash

find /home/davidh/files2 -name "*.tgz" -type f -mtime +60 -delete;
